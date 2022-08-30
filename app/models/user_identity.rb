class UserIdentity < ApplicationRecord
  belongs_to :user
  has_many :user_identity_genders
  has_many :genders, through: :user_identity_genders
end
