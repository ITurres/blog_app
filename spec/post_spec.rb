require_relative '../app/models/user'
require_relative '../app/models/post'

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
end
