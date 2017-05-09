class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user.present? && user.authenticate.params[:password]
      session[:user_id] = user.id
      redirect_to new_appearance_path
    else
      flash[:notice] = "You made some mistake"
      redirect to login_path
    end
  end

end
