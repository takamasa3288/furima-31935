FactoryBot.define do
  factory :item do
    image { Faker::Lorem.sentence }
    name { 'test' }
    description { 'test' }
    category_id { 1 }
    state_id { 1 }
    carriage_id { 1 }
    area_id { 1 }
    days_id { 1 }
    price { 5000 }
    association :user
  end
end
