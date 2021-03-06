class Api::AuthenticationController < ApplicationController
  include Response

  def authenticate
    auth_token = AuthenticateUser.new(auth_params[:email], auth_params[:password]).call
    json_response({ token: auth_token })
  end

  private

  def auth_params
    params.permit(:email, :password)
  end
end
