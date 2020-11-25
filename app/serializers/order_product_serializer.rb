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
class OrderProductSerializer
  include JSONAPI::Serializer
  attributes :id, :product_variant_id, :quantity, :total, :price
  belongs_to :product_variant

  attribute :product_name do |object|
    "#{object.product_variant.product.name}"
  end
  attribute :product_id do |object|
    "#{object.product_variant.product_id}"
  end
end
