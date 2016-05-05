class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  private
    def user_params
      params.require(:user).permit(:name,:height,:tickets,:happiness,:nausea,:admin)
    end

end