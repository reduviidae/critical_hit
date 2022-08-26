require 'pry'

class User < ApplicationRecord
  # has_secure_password

  enum sexuality: SEXUALITIES, _prefix: true

  validates :birth_date,
    presence: true,
    comparison: {
      less_than_or_equal_to: 18.years.ago,
      message: 'You must be at least 18 years old to use this site.'
    }

  validates :display_name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true

  has_many :addresses
  has_many :user_genders
  has_many :genders, through: :user_genders
end
