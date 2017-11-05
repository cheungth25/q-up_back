class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    byebug
    @user = User.new(user_params)
    if @user.save
      render json: {status: 200, message: "Account was created!"}
    else
      # check fail cases of @user.errors.full_messages
      # case for duplicate email
      # general case for failure
      render json: { status: 403, message: @user.errors }
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :email_confirmation, :phone, :password, :password_confirmation)
    end

end
