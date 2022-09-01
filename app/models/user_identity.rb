class UserIdentity < ApplicationRecord
  belongs_to :user
  has_many :user_identity_genders, dependent: :destroy
  has_many :genders, through: :user_identity_genders
end
