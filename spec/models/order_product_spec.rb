# == Schema Information
#
# Table name: order_products
#
#  id                 :bigint           not null, primary key
#  order_store_id     :integer
#  product_variant_id :integer
#  price              :decimal(, )
#  notes              :text
#  total              :decimal(, )
#  quantity           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
require 'rails_helper'

RSpec.describe OrderProduct, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
