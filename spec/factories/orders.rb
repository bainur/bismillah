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
FactoryBot.define do
  factory :order do
    number { "MyString" }
    user { nil }
    status { "MyString" }
    total_price_items { "9.99" }
    total_price_delivery { "9.99" }
    total_all_price { "9.99" }
    receiver_name { "MyString" }
    receiver_phone_number { "MyString" }
    receiver_mobile_number { "MyString" }
    receiver_state { "MyString" }
    receiver_city { "MyString" }
    receiver_address { "MyText" }
    receiver_postal_code { "MyString" }
    destination_code { "MyString" }
    service_delivery { "MyString" }
  end
end
