FactoryBot.define do
  factory :user do
    attracted_to { Gender.pluck(:id).sample(3) }
    birth_date {
      Faker::Date.between(from: '1925-01-01', to: '2004-01-01')
    }
    display_name { Faker::Lorem.unique.word }
    email { Faker::Internet.unique.email }
    gender_nonconforming { Faker::Boolean.boolean }
    password_digest { Faker::Internet.password(
        max_length: 50,
        mix_case: true,
        special_characters: true
      )
    }
    phone { Faker::PhoneNumber.cell_phone }
    queers_only { Faker::Boolean.boolean }
    sexuality { SEXUALITIES.values.sample }
    steam_profile_name {
      Faker::Internent.username(specifier: 6..12)
    }
    t4t_only { Faker::Boolean.boolean }
    trans { Faker::Boolean.boolean }
  end
end