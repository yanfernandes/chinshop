class UsersController < ApplicationController
  load_and_authorize_resource
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    @user.save
  end

  private
  
  def user_params
    params.require(:user).permit(:email, :encrypted_password, :admin)
  end

end
