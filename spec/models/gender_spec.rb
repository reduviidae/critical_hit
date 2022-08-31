require 'rails_helper'

describe Gender, type: :model do
  context 'associations' do
    it { should have_many(:user_identity_genders) }
    it { should have_many(:user_identities).through(:user_identity_genders) }
    it { should have_many(:users).through(:user_identities) }
  end
end
