require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) { create(:user) } # ? This is a factory created with FactoryBot.
  let(:related_post) { create(:post, author: user) } # ? This is a factory created with FactoryBot.

  describe '#methods' do
    describe '#update_comments_counter' do
      it 'should update the comments_counter attribute of a post' do
        Comment.create(post: related_post, author: user, text: 'first comment')
        Comment.create(post: related_post, author: user, text: 'second comment')
        Comment.create(post: related_post, author: user, text: 'third comment')

        expected_comments_count = 3

        expect(related_post.comments_counter).to eq(expected_comments_count)
      end
    end
  end
end
