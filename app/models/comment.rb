class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id
  belongs_to :post, class_name: 'Post', foreign_key: :post_id

  # * Rails ActiveRecord callbacks to update counters in User model after saving a Comment
  after_save :update_comments_counter

  def update_comments_counter(status = 'increment')
    if status == 'increment'
      post.increment!(:comments_counter)
    elsif status == 'decrement'
      post.decrement!(:comments_counter)
    end
  end
end
