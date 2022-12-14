require 'pry'

class User < ApplicationRecord
  # has_secure_password

  enum sexuality: SEXUALITIES, _prefix: true

  validates :birthday,
            presence: true,
            comparison: {
              less_than_or_equal_to: 18.years.ago,
            }

  validates :display_name, presence: true
  validates :email, presence: true
  validates :password_digest, presence: true

  has_many :addresses, dependent: :destroy

  # Identity relationships
  has_one :user_identity, dependent: :destroy
  has_many :user_identity_genders, through: :user_identity
  has_many :genders, through: :user_identity_genders
end
