class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.integer :order_store_id
      t.integer :product_variant_id
      t.decimal :price
      t.text :notes
      t.decimal :total
      t.integer :quantity

      t.timestamps
    end
  end
end
