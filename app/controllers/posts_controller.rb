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

  def new
    p '------PostsController / new------'

    @post = Post.new
    @user = current_user
  end

  def create
    p '------PostsController / create------'

    @post = Post.new(post_params)
    @post.author = current_user

    if @post.save
      flash[:success] = 'Post successfully created!'
      redirect_to user_posts_path(current_user)
    else
      flash[:error] = 'Post could not be created, please try again...'
      render :new, locals: { user: @user, post: @post }
    end
  end

  private

  def post_params
    p '------PostsController / post_params------'

    params.require(:post).permit(:title, :text)
  end
end
