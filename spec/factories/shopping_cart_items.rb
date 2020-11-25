# == Schema Information
#
# Table name: shopping_cart_items
#
#  id             :bigint           not null, primary key
#  owner_id       :integer
#  owner_type     :string
#  quantity       :integer
#  item_id        :integer
#  item_type      :string
#  price_currency :string
#  price_cents    :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  notes          :text
#  product_id     :integer
#
# Indexes
#
#  index_shopping_cart_items_on_product_id  (product_id)
#
FactoryBot.define do
  factory :shopping_cart_item do
    owner_id { 1 }
    owner_type { "MyString" }
    quantity { 1 }
    item_id { 1 }
    item_type { "MyString" }
    price_currency { "MyString" }
    price_cents { "9.99" }
  end
end
