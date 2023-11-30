class User < ApplicationRecord
  has_many :posts, class_name: 'Post', foreign_key: :author_id_id
  has_many :comments, class_name: 'Comment', foreign_key: :users_id
  has_many :likes, class_name: 'Like', foreign_key: :users_id

  def most_recent_posts(n_limit = 3)
    posts.order(created_at: :desc).limit(n_limit)
  end
end
