# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  store_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class CartSerializer
include JSONAPI::Serializer

  set_type :cart  # optional

  has_many :shopping_cart_items
  belongs_to :store
end
