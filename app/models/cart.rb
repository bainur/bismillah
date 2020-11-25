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
class Cart < ApplicationRecord
  acts_as_shopping_cart_using :shopping_cart_item
  validates :user_id, :store_id, presence: true

  belongs_to :store
end
