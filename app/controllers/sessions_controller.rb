class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: 'Successfully logged in'
    else
      render :new, notice: "That user doesn't exist!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Successfully logged out'
  end
end
