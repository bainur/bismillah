class Carts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :user_id, null: false
      t.integer :store_id, null: false
      t.integer :product_variant_id, null: false
      t.integer :quantity, null: false
      t.text :notes
      
      t.timestamps
    end
  end
end
