FactoryBot.define do
  factory :user_gender do
    association :gender
    association :user
    primary { Faker::Boolean.boolean }
  end
end
