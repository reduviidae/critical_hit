FactoryBot.define do
  factory :user_identity do
    association :user
    gender_nonconforming { Faker::Boolean.boolean }
    nonbinary { Faker::Boolean.boolean }
    trans { Faker::Boolean.boolean }
    primary { Faker::Boolean.boolean }
  end
end
