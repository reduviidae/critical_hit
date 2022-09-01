class User < ApplicationRecord
  # has_secure_password

  enum sexuality: SEXUALITIES, _prefix: true

  validate do |user|
    Validation::User.call(user)
  end

  has_many :addresses, dependent: :destroy

  # Identity relationships
  has_one :user_identity, dependent: :destroy
  has_many :user_identity_genders, through: :user_identity
  has_many :genders, through: :user_identity_genders

  def age
    (Time.now.to_fs(:number).to_i - birth_date.to_time.to_fs(:number).to_i)/10e9.to_i
  end
end
