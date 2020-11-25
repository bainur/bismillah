class VariantItems < ActiveRecord::Migration[6.0]
  def change
    create_table :variant_items do |t|
      t.integer :variant_id, null: false
      t.string :name, null: false
      
      t.timestamps
    end
  end
end
