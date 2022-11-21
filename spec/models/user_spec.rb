require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:display_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password_digest) }

    describe 'birthday' do
      it { is_expected.to validate_presence_of(:birthday) }

      it 'allows a user at leas 18 years of age' do
        user = build(:user)
        expect(user).to be_valid
      end

      it 'does not allow a user at 18 years of age' do
        user = build(:user, birthday: 15.years.ago)
        expect(user).not_to be_valid
      end
    end
  end

  describe 'associations' do
    it { is_expected.to have_many(:addresses) }
    it { is_expected.to have_one(:user_identity) }
    it { is_expected.to have_many(:user_identity_genders).through(:user_identity) }
    it { is_expected.to have_many(:genders).through(:user_identity_genders) }
  end
end
