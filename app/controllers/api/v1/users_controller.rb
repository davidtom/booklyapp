class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    @users = User.all
    render json: @users
  end


  # /users/:id =>


  def me
    render json: current_user
  end


  def create
    @user = User.new(username: params[:username], password:params[:password])
    if @user.save
      render json: @user
    else
      # show some error
      render json: { message: "User not created"}
    end
  end


  def user_params
    params.require(:user).permit(:username, :password)
  end

end
