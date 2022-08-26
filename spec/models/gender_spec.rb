require 'rails_helper'

describe Gender, type: :model do
  context 'associations' do
    it { should have_many(:user_genders) }
    it { should have_many(:users).through(:user_genders) }
  end
end
