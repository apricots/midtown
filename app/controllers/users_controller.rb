class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
  end

  def create
    @user = User.new(user_params)

    if @user.save 
      flash[:notice] = "Hi #{@user.username}! You have created a new account!"
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end

  end

  private
  def user_params
    params.require(:user).permit(:username, :address)
  end
end
