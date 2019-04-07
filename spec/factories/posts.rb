FactoryBot.define do
  factory :post do
    users_id { nil }
    content { "MyText" }
    created_at { "2019-04-07 12:07:29" }
  end
end
