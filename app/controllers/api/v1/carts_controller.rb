module Api
  module V1
    class CartsController < Api::V1::ApiController
      before_action :find_cart, except: [:remove_carts, :index, :remove_cart_item]

      def add_to_cart
        # add to chart
        @cart.add(@product_variant, @product_variant.product.price, @quantity)
        # adding notes, product id ( since its use gem i should update it manually)
        cart_item = ShoppingCartItem.where(owner_id: @cart.id, owner_type: 'Cart', item_id: @product_variant.id).first
        cart_item.update_columns(notes: @notes, product_id: @product_variant.product.id)

        render json: {status: :ok, code: 200, message: "Success"}
      end

      def remove_cart_item
        # remove product / quantity from chart
        qty = params[:cart][:quantity].to_i
        cart = Cart.where(user_id: current_user.id, store_id: params[:cart][:store_id]).first
        product_variant = ProductVariant.find(params[:cart][:product_variant_id])
        return render json: {status: :error, code: 442, message: "Cart Not Found"} if cart.blank?

        cart_item = ShoppingCartItem.where(owner_id: cart.id, owner_type: 'Cart', item_id: product_variant.id).first
        if qty > 0
          cart_item.update_columns(quantity: cart_item.quantity - qty)
        else
          cart_item.delete
        end

        render json: {status: :ok, code: 200, message: "Success"}
      end

      def remove_carts
        carts = Cart.where(user_id: current_user.id).select(:id)
        carts.each do |cart|
          cart.clear
        end
        carts.delete_all

        render json: {status: :ok, code: 200, message: "Success"}
      end

      def index
        # get list item from chart'
        carts = Cart.where(user_id: current_user.id)
         json_product = CartSerializer.new(carts , include: [:store,:shopping_cart_items,
                                                             :'shopping_cart_items.product' ,
                                                             ]).serializable_hash.to_json
          render json: json_product
      end
    end
  end
end