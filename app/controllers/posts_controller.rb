class PostsController < ApplicationController
  def index
    p '------PostsController------'
    @posts = @user.posts
  end

  def show
    p '------PostsController / show------'
  end
end
