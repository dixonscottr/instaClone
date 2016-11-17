class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash[:notice] = "Thank you for logging in!"
      session[:user_id]= @user.id
      redirect_to '/'
    else
      render 'new'
    end
  end

  def destroy
    session.clear
    flash[:notice] = 'You are logged out and will be missed :('
    redirect_to '/'
  end

end
