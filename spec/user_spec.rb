require_relative '../app/models/user'

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
end
