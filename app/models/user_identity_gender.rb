class UserIdentityGender < ApplicationRecord
  belongs_to :user_identity
  belongs_to :gender
end
