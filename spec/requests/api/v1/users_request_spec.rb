require 'rails_helper'

describe 'api/v1/users', type: :request do
  let!(:users) { create_list(:user, 3) }

  context 'when a query does not alter the database' do
    describe 'GET #index' do
      before { get api_v1_users_path }

      it 'returns an ok status' do
        expect(response).to be_successful
      end

      it 'returns a list of all users' do
        result = JSON.parse(response.body)
        expected = JSON.parse(users.to_json)
        expect(result).to eq expected
      end
    end

    describe 'GET #show' do
      let(:user) { users.first }

      before { get api_v1_user_path(user.id) }

      it 'returns an ok status' do
        expect(response).to be_successful
      end

      it 'returns the expected user object' do
        result = JSON.parse(response.body)
        expected = JSON.parse(user.to_json)
        expect(result).to eq expected
      end
    end
  end

  context 'when a query does alter the database' do
    let(:user_params) {
      {
        user: {
          birth_date: '1980-01-01',
          display_name: 'walnut',
          email: 'walnut@walnut.com',
          password_digest: 'password',
          phone: '5108750087',
          steam_profile_name: 'walnut',
        },
      }
    }

    describe 'POST #create' do
      def post_create(params)
        post api_v1_users_path(params)
      end

      context 'when valid params are provided' do
        it 'creates a new user' do
          expect { post_create(user_params) }.to change(User, :count).by(1)
        end
      end

      context 'without valid params' do
        it 'does not allow creating a user under 18 years of age' do
          expect { post_create(user_params.except(:birth_date)) }.to raise 'octopus'
        end
      end
    end

    describe 'PUT #update' do
      context 'when valid params are provided' do
      end

      context 'without valid params' do
      end
    end

    describe 'DELETE #destroy' do
      context 'when valid params are provided' do
      end

      context 'without valid params' do
      end
    end
  end
end
