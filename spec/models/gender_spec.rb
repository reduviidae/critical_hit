require 'rails_helper'

describe Gender, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:user_identity_genders) }
    it { is_expected.to have_many(:user_identities).through(:user_identity_genders) }
    it { is_expected.to have_many(:users).through(:user_identities) }
  end
end
