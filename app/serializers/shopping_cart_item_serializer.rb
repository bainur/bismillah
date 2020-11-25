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
class ShoppingCartItemSerializer
include JSONAPI::Serializer

  set_type :cart_item  # optional
  attributes :quantity, :notes

  has_one :product_variant, polymorphic: {ProductVariant => :product_variant}

  attribute :product_name do |object|
    "#{object.product_variant.product.name}"
  end

attribute :product_price do |object|
  "#{object.product_variant.product.price}"
end
end
