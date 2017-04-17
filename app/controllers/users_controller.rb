class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(params[:user]).save
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
