require_relative '../app/models/user'
require_relative '../app/models/post'

RSpec.describe User, type: :model do
  subject { described_class.new(name: 'Harry', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Student at Hogwarts') }

  before { subject.save }

  describe 'Validations' do
    describe 'name attribute' do
      it 'should be valid if "name" is present' do
        subject.name = 'Snape'

        expect(subject).to be_valid
      end

      it 'should NOT be valid if "name" is not present' do
        subject.name = nil

        expect(subject).to_not be_valid
      end
    end

    describe 'posts_counter attr' do
      context 'should be valid when' do
        it 'assigned an integer value' do
          subject.posts_counter = 10

          expect(subject).to be_valid
        end

        it 'assigned an integer greater than 0' do
          subject.posts_counter = 10

          expect(subject).to be_valid
        end
      end

      context 'should NOT be valid when' do
        it 'assigned a non-integer value' do
          subject.posts_counter = 'string'

          expect(subject).to_not be_valid
        end

        it 'assigned an integer less than 0' do
          subject.posts_counter = -1

          expect(subject).to_not be_valid
        end
      end
    end
  end

  describe '#methods' do
    describe '#most_recent_posts' do
      it 'should return the default 3 most recent' do
        post1 = Post.create(author: subject, title: 'Comment 1', text: 'some text')
        post2 = Post.create(author: subject, title: 'Comment 2', text: 'some text')
        post3 = Post.create(author: subject, title: 'Comment 3', text: 'some text')

        # * The most recent posts defaults to the last n_limit = 3 posts created.
        expect(subject.most_recent_posts).to eq([post3, post2, post1])
      end

      it 'should return an specify number of posts. i.e n_limit = 2; most recent' do
        post1 = Post.create(author: subject, title: 'Comment 1', text: 'some text')
        post2 = Post.create(author: subject, title: 'Comment 2', text: 'some text')
        n_limit = 2

        expect(subject.most_recent_posts(n_limit)).to eq([post2, post1])
      end
    end
  end
end
