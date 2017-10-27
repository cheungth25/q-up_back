class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    byebug
    @user = User.new(user_params)
    if @user.save
      render json: @user
    else
      render json: { message: "User mot created" }
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :password)
    end

end
