require 'rails_helper'

RSpec.describe UserIdentity, type: :model do
  context 'validations' do
    # it { should validate_presence_of(:user_id) }
  end

  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:user_identity_genders) }
    it { should have_many(:genders).through(:user_identity_genders) }
  end
end
