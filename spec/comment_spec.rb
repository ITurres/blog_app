require_relative '../app/models/user'
require_relative '../app/models/post'

RSpec.describe Comment, type: :model do
  let(:user) { User.create(name: 'Harry', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Student at Hogwarts') }
  let(:related_post) { Post.create(author: user, title: 'A title', text: 'some text here') }

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
