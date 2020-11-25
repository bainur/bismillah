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
class OrderStoreSerializer
  include JSONAPI::Serializer
  attributes :id, :store_id, :total, :status
  has_many :order_products
end
