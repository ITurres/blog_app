class CommentsController < ApplicationController
  def new
    p '------CommentsController / new------'

    @comment = Comment.new
    @user = current_user
  end

  def create
    p '------CommentsController / create------'

    @comment = Comment.new(comment_params)
    @comment.author = current_user

    if @comment.save
      flash[:success] = 'Comment posted!'
      redirect_to user_posts_path(current_user)
    else
      flash[:error] = 'Comment not posted, please try again...'
    end
  end

  def destroy
    p '------CommentsController / destroy------'

    @comment = Comment.find_by(id: params[:id])
    @post = Post.find(@comment.post_id)

    if @comment.destroy
      @comment.update_comments_counter('decrement')
      flash[:success] = 'Comment successfully deleted!'
      redirect_to user_posts_path(current_user)
    else
      flash[:error] = 'Comment could not be deleted, please try again...'
      render :show
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :post_id)
  end
end
