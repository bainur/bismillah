class AddProductIdToShoppingCartItem < ActiveRecord::Migration[6.0]
  def change
    add_column :shopping_cart_items, :product_id, :integer
    add_index :shopping_cart_items, :product_id
  end
end
