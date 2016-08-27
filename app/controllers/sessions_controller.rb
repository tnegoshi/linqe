class SessionsController < ApplicationController

 def new

 end

 def signin
 end

 def create
   user = User.find_by(username: params[:user][:username])

   if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
   else
     redirect_to signin_path
   end
 end

 def destroy
   reset_session
   redirect_to root_path
 end

 private

 def session_params
  params.require(:user).permit(:username, :password, :admin)
 end
end