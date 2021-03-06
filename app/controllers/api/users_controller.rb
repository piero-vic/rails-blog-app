class Api::UsersController < ApplicationController
  include ApiExceptionHandler
  before_action :authorize_request

  def index
    @users = User.all.order(created_at: :asc)
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
end
