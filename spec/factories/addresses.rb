FactoryBot.define do
  factory :address do
    city { Faker::Address.city }
    country { Faker::Address.country }
    label { ADDRESS_LABELS.sample }
    line_1 { Faker::Address.street_address }
    postal_code {Faker::Address.postcode }
    state { Faker::Address.state}
  end
end
