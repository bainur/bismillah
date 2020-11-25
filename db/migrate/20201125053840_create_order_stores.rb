class CreateOrderStores < ActiveRecord::Migration[6.0]
  def change
    create_table :order_stores do |t|
      t.integer :order_id
      t.integer :store_id
      t.string :store_order_number
      t.decimal :total
      t.integer :status

      t.timestamps
    end
  end
end
