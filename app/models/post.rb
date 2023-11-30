class Post < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id_id
  has_many :comments, class_name: 'Comment', foreign_key: :post_id, dependent: :destroy
  has_many :likes, class_name: 'Like', foreign_key: :post_id, dependent: :destroy

  def update_posts_counter
    author.increment!(:posts_counter)
  end

  def most_recent_comments(n_limit = 5)
    comments.order(created_at: :desc).limit(n_limit)
  end
end
