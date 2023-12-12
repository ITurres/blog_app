require 'rails_helper'

RSpec.describe User, type: :system do
  let(:user) { create(:user) }

  describe 'show page' do
    before do
      # Create three posts for the user
      create_list(:post, 3, author: user)
      # Create additional posts for other users
      create_list(:post, 2)
      visit user_path(user)
    end

    it 'I can see the user\'s profile picture' do
      # Ensure that the user's profile picture is visible on the page
      expect(page).to have_selector('img')
    end

    it 'I can see the user\'s username' do
      # Ensure that the user's username is visible on the page
      expect(page).to have_content('John Doe')
    end

    it 'I can see the number of posts the user has written' do
      # Ensure that the post counter is visible on the page
      expect(page).to have_content('Post #3')
    end

    it 'I can see the user\'s bio' do
      # Ensure that the user's bio is visible on the page
      expect(page).to have_content('A bio for John Doe.')
    end

    it 'I can see the user\'s first 3 posts' do
      # Ensure that the content of the first 3 posts is visible on the page
      user.posts.first(3).each do |post|
        expect(page).to have_content(post.title)
        expect(page).to have_content(post.text)
      end
    end

    it 'I can see a button that lets me view all of a user\'s posts' do
      # Ensure that the "See all posts" button is visible on the page
      expect(page).to have_link('See all posts')
    end

    it 'When I click to see all posts, it redirects me to the user\'s post\'s index page' do
      # Click on the "See all posts" button
      click_link 'See all posts'
      # Ensure that we are redirected to the user's post index page
      expect(page).to have_current_path(user_posts_path(user))
    end
  end

  describe 'When I click a user\'s post' do
    it 'redirects me to that post\'s show page' do
      # Click on the link of the first post
      post = create(:post, author: user)

      visit user_path(user)
      click_link post.title

      # Ensure that we are redirected to the post's show page
      expect(page).to have_current_path(user_path(user))
    end
  end
end
