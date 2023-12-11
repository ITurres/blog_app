require 'rails_helper'

RSpec.describe Post, type: :model do
  let(:user) { User.create(name: 'Harry', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Student at Hogwarts') }
  subject { described_class.new(author: user, title: 'A valid title within maximum length', text: 'some text here') }

  before { subject.save }

  describe 'Validations' do
    describe 'title attribute' do
      context 'should be valid' do
        it 'with a presence title' do
          subject.title = 'A valid title'

          expect(subject).to be_valid
        end

        it 'with a title within maximum length' do
          subject.title = 'A valid title within maximum length'

          expect(subject).to be_valid
        end
      end

      context 'should NOT be valid' do
        it 'should not be valid without a title' do
          subject.title = nil

          expect(subject).to_not be_valid
        end

        it 'should not be valid with a title exceeding maximum length' do
          string_exceeding_maximum_length = 'T' * 251
          subject.title = string_exceeding_maximum_length

          expect(subject).to_not be_valid
        end
      end
    end
  end

  describe 'comments_counter attribute' do
    context 'should be valid' do
      it 'if it is an integer' do
        subject.comments_counter = 10

        expect(subject).to be_valid
      end

      it 'if it is greater than or equal to 0' do
        subject.comments_counter = 10

        expect(subject).to be_valid
      end
    end

    context 'should NOT be valid' do
      it 'if it is NOT an integer' do
        subject.comments_counter = 'string'

        expect(subject).to_not be_valid
      end

      it 'if it is less than 0' do
        subject.comments_counter = -1

        expect(subject).to_not be_valid
      end
    end
  end

  describe 'likes_counter attribute' do
    context 'should be valid' do
      it 'if it is an integer' do
        subject.likes_counter = 10

        expect(subject).to be_valid
      end

      it 'if it is greater than or equal to 0' do
        subject.likes_counter = 10

        expect(subject).to be_valid
      end
    end

    context 'should NOT be valid' do
      it 'if it is NOT an integer' do
        subject.likes_counter = 'string'

        expect(subject).to_not be_valid
      end

      it 'if it is less than 0' do
        subject.likes_counter = -1

        expect(subject).to_not be_valid
      end
    end
  end

  describe '#methods' do
    describe '#update_posts_counter' do
      it 'should update the posts_counter attribute of the author' do
        expect { subject.update_posts_counter }.to change { user.posts_counter }.by(1)
      end
    end

    describe '#most_recent_comments' do
      it 'should return the default 5 most recent' do
        comment1 = Comment.create(post: subject, author: user, text: 'Comment 1')
        comment2 = Comment.create(post: subject, author: user, text: 'Comment 2')
        comment3 = Comment.create(post: subject, author: user, text: 'Comment 3')
        comment4 = Comment.create(post: subject, author: user, text: 'Comment 4')
        comment5 = Comment.create(post: subject, author: user, text: 'Comment 5')

        # * The most recent comments defaults to the last n_limit = 5 comments created.
        expect(subject.most_recent_comments).to eq([comment5, comment4, comment3, comment2, comment1])
      end

      it 'should return an specify number of comments. i.e n_limit = 2; most recent' do
        comment1 = Comment.create(post: subject, author: user, text: 'Comment 1')
        comment2 = Comment.create(post: subject, author: user, text: 'Comment 2')
        n_limit = 2

        expect(subject.most_recent_comments(n_limit)).to eq([comment2, comment1])
      end
    end
  end
end
