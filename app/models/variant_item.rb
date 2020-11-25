# == Schema Information
#
# Table name: variant_items
#
#  id         :bigint           not null, primary key
#  variant_id :integer          not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class VariantItem < ApplicationRecord

  validates :variant_id, :name, presence: true
  
end
