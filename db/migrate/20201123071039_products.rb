class Products < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :store_id, null: false
      t.string :name, null: false
      t.text :description, null: false
      t.integer :price, null: false
      
      t.timestamps
    end

    add_index :products, :name
  end
end
