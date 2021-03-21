FactoryBot.define do
  factory :order_address do
    post_code { '111-1111' }
    prefecture_id { 1 }
    city { '横浜市' }
    house_number { '1-11' }
    building_name { '建物名' }
    phone_number { '09012345678' }
    token { 'tok_abcdefghijk00000000000000000' }
    user_id { Faker::Number }
    item_id { Faker::Number }
  end
end
