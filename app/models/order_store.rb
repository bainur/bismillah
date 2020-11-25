# == Schema Information
#
# Table name: order_stores
#
#  id                 :bigint           not null, primary key
#  order_id           :integer
#  store_id           :integer
#  store_order_number :string
#  total              :decimal(, )
#  status             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class OrderStore < ApplicationRecord
  belongs_to :store
  belongs_to :order
  has_many :order_products

  accepts_nested_attributes_for :order_products

end
