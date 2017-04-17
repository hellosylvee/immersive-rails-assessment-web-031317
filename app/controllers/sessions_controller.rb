class SessionsController < ApplicationController

  def new
  end

  def create
    session[:user] = params[:user]
  end

end
