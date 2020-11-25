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
require 'rails_helper'

RSpec.describe ShoppingCartItem, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
