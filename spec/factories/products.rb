FactoryBot.define do
  factory :product do
    description { Faker::Lorem.sentence }
    price { Faker::Number.decimal(l_digits: 2) }
  end
end
