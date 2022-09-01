require 'rails_helper'

RSpec.describe UserIdentity, type: :model do
  # describe 'validations' do
  #   it { is_expected.to validate_presence_of(:user_id) }
  # end

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:user_identity_genders) }
    it { is_expected.to have_many(:genders).through(:user_identity_genders) }
  end
end
