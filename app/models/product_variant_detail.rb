# == Schema Information
#
# Table name: product_variant_details
#
#  id                 :bigint           not null, primary key
#  product_variant_id :integer          not null
#  variant_id         :integer          not null
#  variant_item_id    :integer          not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class ProductVariantDetail < ApplicationRecord

  validates :product_variant_id, :variant_id, :variant_item_id, presence: true
  
  belongs_to :product_variant
  belongs_to :variant
  belongs_to :variant_item

end
