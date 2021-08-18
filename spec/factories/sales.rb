FactoryBot.define do
  factory :sale do
    buyer { Faker::Name.name }
    quantity { Faker::Number.number(digits: 2) }
    product
    seller
    sale
  end
end
