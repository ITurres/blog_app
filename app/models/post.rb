class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  has_many :comments, class_name: 'Comment', foreign_key: :post_id, dependent: :destroy
  has_many :likes, class_name: 'Like', foreign_key: :post_id, dependent: :destroy

  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }

  # * Rails ActiveRecord callbacks to update counters in User model after saving a Post.
  after_save :update_posts_counter

  def update_posts_counter
    author.increment!(:posts_counter)
  end

  def most_recent_comments(n_limit = 5)
    comments.order(created_at: :desc).limit(n_limit)
  end
end
