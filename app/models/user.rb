class User < ApplicationRecord
  # has_secure_password
  
  enum sexuality: SEXUALITIES, _prefix: true

  validates :birth_date, presence: true
  validates :display_name, presence: true
  validates :email, presence: true
  validates :nonbinary, presence: true
  validates :password_digest, presence: true
  validates :trans, presence: true

  has_many :addresses
  has_many :user_genders
  has_many :genders, through: :user_genders
end
