class SessionsController < ApplicationController

  def new
    @user = User.new
    @users = User.all
  end

  def create
    user_id = params[:user][:id]
    session[:user_id] = user_id
    redirect_to user_path(user_id)
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end