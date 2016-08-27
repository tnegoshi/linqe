class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]


  #CRUD actions

  # def index
  #  @users = User.all
  # end

  def show
  end

  #custom show action to see a user's comments
  def comments
  end

  def edit
  end

  def update
  end


  private

  #sanatize paramaters

  def user_params
    params.require(:user).permit(:username, :email,:password, :first_name, :last_name)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
