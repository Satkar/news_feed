FactoryBot.define do
  factory :post do
    content {  Faker::String.random }
  end
end
