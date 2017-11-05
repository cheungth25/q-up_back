class ApplicationController < ActionController::Base
  # protect_from_forgery with: :exception
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authorized

  def issue_token(payload)
    JWT.encode(payload, "supersecretcode")
  end

  def decoded_token(token)
    begin
      JWT.decode(token, "supersecretcode")
    rescue JWT::DecodeError
      return nil
    end
  end

  def logged_in?
    !!current_user
  end

  def current_user
    authenticate_or_request_with_http_token do |token, options|
      user_id = decoded_token(token)[0]["user_id"]
      @current_user ||= User.find(user_id)
    end
  end

  def authorized
    render json: { status: 401, message: "Unauthorized" } unless logged_in?
  end

end
