class Gender < ApplicationRecord
  has_many :user_identity_genders, dependent: :nullify
  has_many :user_identities, through: :user_identity_genders
  has_many :users, through: :user_identities
end
