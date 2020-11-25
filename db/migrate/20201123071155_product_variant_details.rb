class ProductVariantDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :product_variant_details do |t|
      t.integer :product_variant_id, null: false
      t.integer :variant_id, null: false
      t.integer :variant_item_id, null: false
      
      t.timestamps
    end
  end
end
