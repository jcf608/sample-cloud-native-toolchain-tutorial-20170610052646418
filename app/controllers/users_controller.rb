class UsersController < ApplicationController

  def index
    @users = User.all.order("created_at DESC")
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.create( user_params )
    redirect_to users_path
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:user).permit(:first_name, :last_name, :avatar)
  end
end