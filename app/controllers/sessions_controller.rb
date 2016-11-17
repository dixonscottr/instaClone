class SessionsController < ApplicationController

  def new
    if request.xhr?
      render partial: 'new', :layout => false
    end
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash[:notice] = "Thank you for logging in!"
      session[:user_id]= @user.id
      unless request.xhr?
        redirect_to '/'
      end
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
