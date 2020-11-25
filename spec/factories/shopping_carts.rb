# == Schema Information
#
# Table name: shopping_carts
#
#  id              :bigint           not null, primary key
#  user_id         :bigint           not null
#  order_id        :bigint           not null
#  delivery_method :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_shopping_carts_on_order_id  (order_id)
#  index_shopping_carts_on_user_id   (user_id)
#
FactoryBot.define do
  factory :shopping_cart do
    user { nil }
    order { nil }
    delivery_method { "MyString" }
  end
end
