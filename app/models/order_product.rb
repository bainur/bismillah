# == Schema Information
#
# Table name: order_products
#
#  id                 :bigint           not null, primary key
#  order_store_id     :integer
#  product_variant_id :integer
#  price              :decimal(, )
#  notes              :text
#  total              :decimal(, )
#  quantity           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class OrderProduct < ApplicationRecord
  attr_accessor :shopping_cart_item_id
  
  belongs_to :product_variant
  belongs_to :order_store
end
