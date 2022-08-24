class User < ApplicationRecord
  enum sexuality: SEXUALITIES, _prefix: true

  has_many :addresses
  has_many :genders
end
