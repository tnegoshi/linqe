class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user, :signed_in?, :authorize_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def signed_in?
    !!current_user
  end

  def authorize_user
    unless signed_in?
      redirect_to '/'
    end
  end

end
