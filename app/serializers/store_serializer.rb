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
class StoreSerializer
  include JSONAPI::Serializer

  set_type :store  # optional
  attributes :name, :description
  
end
