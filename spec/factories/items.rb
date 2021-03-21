FactoryBot.define do
  factory :item do
    name { 'test' }
    description { 'test' }
    category_id { 1 }
    state_id { 1 }
    carriage_id { 1 }
    area_id { 1 }
    days_id { 1 }
    price { 5000 }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/sample1.png'), filename: 'sample1.png.png')
    end
  end
end
