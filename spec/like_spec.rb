require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) { User.create(name: 'Harry', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Student at Hogwarts') }
  let(:related_post) { Post.create(author: user, title: 'A title', text: 'some text here') }
  subject { described_class.new(author: user, post: related_post) }

  describe '#methods' do
    describe '#update_likes_counter' do
      it 'should update the likes_counter attribute' do
        Like.create(post: related_post, author: user)
        Like.create(post: related_post, author: user)

        expected_likes_count = 2

        expect(related_post.likes_counter).to eq(expected_likes_count)
      end
    end
  end
end
