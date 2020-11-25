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
class ProductVariantSerializer
  include JSONAPI::Serializer

  set_type :product_variant  # optional
  attributes :sku, :quantity

 
  
end
