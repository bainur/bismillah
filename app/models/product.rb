# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  store_id    :integer          not null
#  name        :string           not null
#  description :text             not null
#  price       :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_name  (name)
#
class Product < ApplicationRecord
  validates :name, :description, :price, presence: true

  belongs_to :store
  has_many :product_variants
  
end