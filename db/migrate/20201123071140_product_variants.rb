class ProductVariants < ActiveRecord::Migration[6.0]
  def change
    create_table :product_variants do |t|
      t.integer :product_id, null: false
      t.string :sku, null: false
      t.integer :quantity, null: false
      
      t.timestamps
    end
  end
end
