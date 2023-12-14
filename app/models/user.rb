class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  before_create :set_default_photo

  has_many :posts, class_name: 'Post', foreign_key: :author_id
  has_many :comments, class_name: 'Comment', foreign_key: :user_id
  has_many :likes, class_name: 'Like', foreign_key: :user_id

  validates :name, presence: true
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0 }

  def most_recent_posts(n_limit = 3)
    posts.includes(:likes, :comments).order(created_at: :desc).limit(n_limit)
  end

  private

  def set_default_photo
    photo_number = rand(1..5) # ? the below url can only handle 5 different photos.
    photo_url = "https://robohash.org/accusantiumeaquea.png?size=200x200&set=set#{photo_number}"

    self.photo ||= photo_url
  end
end
