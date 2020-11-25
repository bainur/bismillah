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
FactoryBot.define do
  factory :order_product do
    order_store_id { 1 }
    product_variant_id { 1 }
    notes { "MyText" }
    quantity { 1 }
  end
end
