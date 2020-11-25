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
class ProductSerializer
  include JSONAPI::Serializer

  set_type :product  # optional
  attributes :name, :description
  
  has_many :product_variants
  belongs_to :store
  
end
