class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end

  def logged_in?
    if params[:user] == nil || params[:user] == ""
      redirect_to login_path
    else
      redirect_to '/'
    end
  end
end
