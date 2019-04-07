FactoryBot.define do
  factory :comment do
    users_id { nil }
    post_id { nil }
    content { "MyText" }
    created_at { "2019-04-07 12:09:48" }
  end
end
