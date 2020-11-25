# == Schema Information
#
# Table name: stores
#
#  id          :bigint           not null, primary key
#  name        :string           not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Store < ApplicationRecord

  validates :name, :description, presence: true  

  has_many :products
  has_many :variants

end
