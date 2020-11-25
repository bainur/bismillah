class ModifyCartAndShoppingCart < ActiveRecord::Migration[6.0]
  def change
    remove_column :carts, :product_variant_id
    remove_column :carts, :quantity
    remove_column :carts, :notes


    add_column :shopping_cart_items, :notes, :text
  end
end
