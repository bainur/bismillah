# == Schema Information
#
# Table name: product_variants
#
#  id         :bigint           not null, primary key
#  product_id :integer          not null
#  sku        :string           not null
#  quantity   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ProductVariant < ApplicationRecord

  validates :sku, :quantity, presence: true
  
  belongs_to :product
  has_many :product_variant_details

end
