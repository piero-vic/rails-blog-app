require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    before(:example) { get users_path }

    it 'has the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end

    it 'includes placeholder test' do
      expect(response.body).to include('Users#index')
    end
  end

  describe 'GET /users/123' do
    before(:example) { get user_path(123) }

    it 'has the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template(:show)
    end

    it 'includes placeholder test' do
      expect(response.body).to include('Users#show')
    end
  end
end
