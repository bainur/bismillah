class Variants < ActiveRecord::Migration[6.0]
  def change
    create_table :variants do |t|
      t.integer :store_id, null: false
      t.string :name, null: false
      
      t.timestamps
    end
  end
end
