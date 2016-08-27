class UsersController < ApplicationController


  def show
    @user = User.find(user_params[:id])
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(user_params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :email)
  end

end
