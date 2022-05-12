class Api::UsersController < ApplicationController
  include ApiExceptionHandler

  def index
    @users = User.all.order(created_at: :asc)
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end
end
