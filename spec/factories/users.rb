FactoryBot.define do
  factory :user do
    attracted_to { Gender.pluck(:id).sample(3) }
    birthday { Faker::Date.birthday(min_age: 18) }
    display_name { Faker::Lorem.unique.word }
    email { Faker::Internet.unique.email }
    password_digest {
      Faker::Internet.password(
        max_length: 50,
        mix_case: true,
        special_characters: true,
      )
    }
    phone { Faker::PhoneNumber.cell_phone }
    queers_only { Faker::Boolean.boolean }
    sexuality { SEXUALITIES.values.sample }
    steam_profile_name { Faker::Internet.username }
    t4t_only { Faker::Boolean.boolean }
  end
end
