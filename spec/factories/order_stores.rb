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
FactoryBot.define do
  factory :order_store do
    order_id { 1 }
    store_id { 1 }
    store_order_number { "MyString" }
    status { 1 }
  end
end
