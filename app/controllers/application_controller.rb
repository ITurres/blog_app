class ApplicationController < ActionController::Base
  def current_user
    # @current_user ||= User.find_by(id: session[:user_id])
    # ! fetch first user for testing purposes. Remove this line when login system in place.
    @current_user = User.first
  end
end
