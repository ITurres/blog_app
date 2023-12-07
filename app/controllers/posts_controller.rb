class PostsController < ApplicationController
  def index
    p '------PostsController------'
    if params[:user_id]
      @user = User.find(params[:user_id])
      @posts = @user.posts
    else
      @posts = Post.all
    end
  end

  def show
    p '------PostsController / show------'
    @post = Post.find(params[:id])
  end
end
