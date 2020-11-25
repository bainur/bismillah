# == Schema Information
#
# Table name: orders
#
#  id                     :bigint           not null, primary key
#  number                 :string
#  user_id                :bigint           not null
#  status                 :string
#  total_price_items      :decimal(, )
#  total_price_delivery   :decimal(, )
#  total_all_price        :decimal(, )
#  receiver_name          :string
#  receiver_phone_number  :string
#  receiver_mobile_number :string
#  receiver_state         :string
#  receiver_city          :string
#  receiver_address       :text
#  receiver_postal_code   :string
#  destination_code       :string
#  service_delivery       :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
class Order < ApplicationRecord
  belongs_to :user
  has_many :order_stores

  accepts_nested_attributes_for :order_stores

  before_create :set_total

  def set_total
    self.total_price_items = 0
    self.order_stores.each do |os|
      os.total = 0
      os.order_products.each do |op|
        cart_item = ShoppingCartItem.find(op.shopping_cart_item_id)
        op.quantity = cart_item.quantity
        op.price = cart_item.price_cents
        op.notes = cart_item.notes
        op.total = op.quantity * op.price.to_f
        os.total += op.total 
      end
      self.total_price_items += os.total
      p "os"
      p os
    end
   self
  end
end
