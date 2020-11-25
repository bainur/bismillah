module Api
  module V1
    class ApiController < ApplicationController
      include Api::Concerns::ActAsApiRequest
      include DeviseTokenAuth::Concerns::SetUserByToken

      before_action :authenticate_user!, except: :status
      skip_after_action :verify_authorized, only: :status

      layout false
      respond_to :json

      rescue_from ActiveRecord::RecordNotFound,        with: :render_not_found
      rescue_from ActiveRecord::RecordInvalid,         with: :render_record_invalid
      rescue_from ActionController::ParameterMissing,  with: :render_parameter_missing

      def status
        render json: { online: true }
      end

      private

      def render_not_found(exception)
        logger.info { exception } # for logging
        render json: { error: I18n.t('api.errors.not_found') }, status: :not_found
      end

      def render_record_invalid(exception)
        logger.info { exception } # for logging
        render json: { errors: exception.record.errors.as_json }, status: :bad_request
      end

      def render_parameter_missing(exception)
        logger.info { exception } # for logging
        render json: { error: I18n.t('api.errors.missing_param') }, status: :unprocessable_entity
      end

      def find_cart
        # add product to chart
        @quantity = params[:cart][:quantity].to_i
        product_variant_id = params[:cart][:product_variant_id]
        @store = Store.find params[:cart][:store_id]
        @notes = params[:cart][:notes]

        @product_variant = ProductVariant.find(product_variant_id)
        @cart = Cart.find_or_create_by(user_id: current_user.id, store_id: @store.id)
      end
    end
  end
end
