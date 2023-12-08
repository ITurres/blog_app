class LikesController < ApplicationController
  def create
    @like = Like.new(like_params)
    @like.author = current_user

    if @like.save
      flash[:success] = 'Well done, keep liking stuff!'
    else
      flash[:error] = 'ups... something went wrong, please like again...'
    end
    redirect_to user_posts_path(current_user)
  end

  private

  def like_params
    params.require(:like).permit(:post_id)
  end
end
