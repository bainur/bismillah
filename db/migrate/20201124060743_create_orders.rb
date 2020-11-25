class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.decimal :total_price_items
      t.decimal :total_price_delivery
      t.decimal :total_all_price
      t.string :receiver_name
      t.string :receiver_phone_number
      t.string :receiver_mobile_number
      t.string :receiver_state
      t.string :receiver_city
      t.text :receiver_address
      t.string :receiver_postal_code
      t.string :destination_code
      t.string :service_delivery

      t.timestamps
    end
  end
end
