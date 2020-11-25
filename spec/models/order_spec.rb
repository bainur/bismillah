# == Schema Information
#
# Table name: orders
#
#  id                     :bigint           not null, primary key
#  number                 :string
#  user_id                :bigint           not null
#  status                 :string
#  total_price_items      :decimal(, )
#  total_price_delivery   :decimal(, )
#  total_all_price        :decimal(, )
#  receiver_name          :string
#  receiver_phone_number  :string
#  receiver_mobile_number :string
#  receiver_state         :string
#  receiver_city          :string
#  receiver_address       :text
#  receiver_postal_code   :string
#  destination_code       :string
#  service_delivery       :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_orders_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Order, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
