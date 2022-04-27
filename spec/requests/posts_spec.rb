require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /users/123/posts' do
    before(:example) { get user_posts_path(123) }

    it 'has the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'index' template" do
      expect(response).to render_template(:index)
    end

    it 'includes placeholder test' do
      expect(response.body).to include('Posts#index')
    end
  end

  describe 'GET /users/123/posts/123' do
    before(:example) { get user_post_path(123, 123) }

    it 'has the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it "renders 'show' template" do
      expect(response).to render_template(:show)
    end

    it 'includes placeholder test' do
      expect(response.body).to include('Posts#show')
    end
  end
end
