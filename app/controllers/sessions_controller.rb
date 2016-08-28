class SessionsController < ApplicationController


 def new
  @user = User.new
 end

 def signin
 end

 def create
   user = User.find_by(username: params[:user][:username])

   if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
   else
     redirect_to signin_path, notice: 'Please try again.'

   end
 end

 def destroy
  reset_session
   redirect_to '/'
 end

 private

 def session_params
  params.require(:user).permit(:username)
 end
end
