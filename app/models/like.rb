class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id
  belongs_to :post, class_name: 'Post', foreign_key: :post_id

  # * Rails ActiveRecord callbacks to update counters in User model after saving a Like
  after_save :update_likes_counter

  def update_likes_counter
    post.increment!(:likes_counter)
  end
end
