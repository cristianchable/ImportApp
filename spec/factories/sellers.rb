FactoryBot.define do
  factory :seller do
    name { Faker::Name.name }
    address { Faker::Address.full_address }
  end
end
