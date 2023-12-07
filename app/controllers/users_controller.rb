class UsersController < ApplicationController
  def index
    p '------UsersController------'
    @users = User.all
  end

  def show
    p '------UsersController / show------'
    @user = User.find(params[:id])
  end
end
