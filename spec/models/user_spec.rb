require 'rails_helper'

describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of(:display_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }

    context 'birth_date' do
      it { should validate_presence_of(:birth_date) }

      it 'should validate that the User is at least 18 years of age' do
        allowed_user = build(:user)
        forbidden_user = build(:user, birth_date: 15.years.ago)
        expect(allowed_user).to be_valid
        expect(forbidden_user).not_to be_valid
      end
    end
  end

  context 'associations' do
    it { should have_many(:addresses) }
    it { should have_one(:user_identity) }
    it { should have_many(:user_identity_genders).through(:user_identity) }
    it { should have_many(:genders).through(:user_identity_genders) }
  end
end
