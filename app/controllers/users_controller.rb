class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    unless @user.save
      render 'new'
    end
    flash[:notice] = "Thank you for signing up to InstaClone!"
    redirect_to '/'

  end

  def show
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password)
    end

end
