class HomeController < ApplicationController
  def index
    @current_user = User.find(session[:user_id])
  end
end
