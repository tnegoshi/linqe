class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :authorize_user, only: [ :edit, :update]


  #CRUD actions

  def index
   @users = User.all
  end

  def show
  end

  def comments #custom show action to see a user's comments
  end

  def edit
  end

  def update
  end

  private

  def user_params #sanatize paramaters
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :first_name, :last_name)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
