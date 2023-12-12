require 'rails_helper'

RSpec.describe Post, type: :system do
  let(:user) { create(:user) }

  describe 'show user page' do
    before do
      @post = create(:post, author: user)
      visit user_post_path(@post.author, @post)
    end

    it 'displays post title' do
      expect(page).to have_content(@post.title)
    end

    it 'displays the name of the post-s author' do
      expect(page).to have_content(@post.author.name)
    end

    it 'displays the number of comments on a post' do
      expect(page).to have_content(@post.comments_counter)
    end

    it 'displays the number of likes on a post' do
      expect(page).to have_content(@post.likes_counter)
    end

    it 'displays the post body/text' do
      expect(page).to have_content(@post.text)
    end

    it 'displays the username of each comment author' do
      create(:comment, post: @post)

      visit user_post_path(@post.author, @post)

      user.comments.each do |comment|
        expect(page).to have_content(comment.author.name)
      end
    end

    it 'displays the body/text of each comment' do
      create(:comment, post: @post)

      visit user_post_path(@post.author, @post)

      user.comments.each do |comment|
        expect(page).to have_content(comment.text)
      end
    end
  end
end
