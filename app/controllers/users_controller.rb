class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @message = params[:message]
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  private
    def user_params
      params.require(:user).permit(:name,:height,:tickets,:happiness,:nausea,:admin)
    end

end