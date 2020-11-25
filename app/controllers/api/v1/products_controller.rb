module Api
    module V1
      class ProductsController < Api::V1::ApiController
        def index            
          q = Product.ransack(name_i_cont: params[:q])
          products =  q.result.includes([:product_variants, :store])

          json_product = ProductSerializer.new(products, include: [:product_variants, :store]).serializable_hash.to_json
          render json: json_product
        end

        def search

        end
       
      end
    end
end
  