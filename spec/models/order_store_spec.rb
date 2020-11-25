# == Schema Information
#
# Table name: order_stores
#
#  id                 :bigint           not null, primary key
#  order_id           :integer
#  store_id           :integer
#  store_order_number :string
#  total              :decimal(, )
#  status             :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require 'rails_helper'

RSpec.describe OrderStore, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
