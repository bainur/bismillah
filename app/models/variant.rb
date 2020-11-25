# == Schema Information
#
# Table name: variants
#
#  id         :bigint           not null, primary key
#  store_id   :integer          not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Variant < ApplicationRecord

  validates :name, presence: true
  
  has_many :product_variant_details
  has_many :variant_items
  belongs_to :store

end
