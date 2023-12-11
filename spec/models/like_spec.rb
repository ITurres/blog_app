require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) { create(:user) } # ? This is a factory created with FactoryBot.
  let(:related_post) { create(:post, author: user) } # ? This is a factory created with FactoryBot.

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
