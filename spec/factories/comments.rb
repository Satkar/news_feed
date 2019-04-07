FactoryBot.define do
  factory :comment do
    content {  Faker::String.random }
  end
end
