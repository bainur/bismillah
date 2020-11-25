module Api
  module V1
    class OrdersController < Api::V1::ApiController
      # before_action :auth_user

      def index
        # get order listing item
        orders  = current_user.orders
        json_product = OrderSerializer.new(orders, include: [:order_stores, "order_stores.order_products", "order_stores.order_products.product_variant", "order_stores.order_products.product_variant.product"]).serializable_hash.to_json
          render json: json_product
      end

      def create
        order = Order.new(order_params)
        order.valid?
        if order.save
          render json: {id: order.id, status: :created}
        else
          render json: order.errors, status: :unprocessable_entity
        end
      end


      private
      def order_params
        order_params = params.require(:order).permit(:user_id, :number, :total_price_items,
          { order_stores: [:store_id, :store_order_number,:total, :status,
           order_products: [:product_variant_id, :quantity, :shopping_cart_item_id, :notes, :price, :total ]] 
          }
        ).tap do |whitelist|
          whitelist[:user_id] = current_user.id
          whitelist[:order_stores].each do |k, v| 
            # [:order_products_attributes] = order_params.delete :order_products
            p "whitelist[:order_stores][k]"
            whitelist[:order_stores][k][:order_products_attributes] = whitelist[:order_stores][k].delete(:order_products) 
          end
        end
        order_params[:order_stores_attributes] = order_params.delete :order_stores
        order_params.permit!
      end
    end
  end
end