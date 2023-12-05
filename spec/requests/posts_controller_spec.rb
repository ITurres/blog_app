require 'rails_helper'

RSpec.describe 'PostsController', type: :request do
  describe 'GET #index' do
    it 'renders the index template' do
      user = create(:user)
      get "/users/#{user.id}/posts"

      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
      expect(response.body).to include('posts/index')
    end
  end

  describe 'GET #show' do
    it 'renders the show template' do
      user = create(:user)
      post = create(:post, author: user)
      get "/users/#{user.id}/posts/#{post.id}"

      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
      expect(response.body).to include('posts/show')
    end
  end
end
