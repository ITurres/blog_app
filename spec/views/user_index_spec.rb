require 'rails_helper'

RSpec.describe Post, type: :system do
  describe 'user index page' do
    before do
      create(:user, name: 'User1', posts_counter: 3)
      create(:user, name: 'User2', posts_counter: 5)
      visit users_path
    end
    # I can see the username of all other users.
    it 'displays the username of all other users' do
      expect(page).to have_content('User1')
      expect(page).to have_content('User2')
    end
    # I can see the profile picture for each user.
    it 'displays the profile picutres of the users' do
      expect(page).to have_selector('img', count: 2)
    end
    # I can see the number of posts each user has written.
    it 'displays the number of posts each user has written' do
      expect(page).to have_content('Number of posts: 3', count: 1)
      expect(page).to have_content('Number of posts: 5', count: 1)
    end
    # When I click on a user, I am redirected to that user's show page.
    it 'when user is clicked it redirects to that users show page' do
      click_link 'User1'
      expect(page).to have_current_path(user_path(User.find_by(name: 'User1')))
    end
  end
end
