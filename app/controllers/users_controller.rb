class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def index
    users = User.all
    render json: users
  end
  
  def show
    render json: @user
  end
  
  def create
    @user = User.new(user_params)
    if @user.valid && @user.save
      render json: @user, status: 200
    else
      render json: @user.errors.full_messages, status: 422
    end
  end
  
  def update
    if @user.update(user_params)
      render json: @user, status: 200
    else
      render json: @user.errors.full_messages ,status: 422
    end
  end
  
  def destroy
    @user.delete
  end
  
  
  private
  
  def set_user
    @user = User.find_by(id: params[:id])  
  end
  
  def user_params
    params.require(:user).permit(:username, :email, :password, :firstname, :lastname)
  end
end
