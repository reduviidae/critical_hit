require 'rails_helper'

describe User do
  context 'validations' do
    it { should validate_presence_of(:birth_date) }
    it { should validate_presence_of(:display_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:nonbinary) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_presence_of(:trans) }
  end

  context 'associations' do
    it { should have_many(:addresses) }
    it { should have_many(:genders) }
  end
end