class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :curent_user

  def authorize_user
    unless session[:user_id].present?
      flash[:notice] = "You must be logged in to do that."
      redirect_to login_path
  end

  def curent_user
    @current_user ||= User.find_by(id: session[:user_id]
  end

  def logged_in?
    !!session[:user_id]
  end
end
