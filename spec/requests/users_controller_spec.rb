require 'rails_helper'

RSpec.describe 'UsersController', type: :request do
  describe 'GET #index' do
    it 'renders the index template' do
      get '/users'

      expect(response).to have_http_status(200)
      expect(response).to render_template(:index)
      expect(response.body).to include('users/index')
    end
  end

  describe 'GET #show' do
    it 'renders the show template' do
      user = create(:user)
      get "/users/#{user.id}"

      expect(response).to have_http_status(200)
      expect(response).to render_template(:show)
      expect(response.body).to include('users/show')
    end
  end
end
