class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @user = current_user
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.author = current_user

    if @comment.save
      flash[:success] = 'Comment posted!'
      redirect_to user_posts_path(current_user)
    else
      flash[:error] = 'Comment not posted, please try again...'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
end
