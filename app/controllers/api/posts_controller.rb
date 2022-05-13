class Api::PostsController < ApplicationController
  include ApiExceptionHandler
  before_action :authorize_request
  def index
    @user = User.find(params[:user_id])
    render json: @user.posts
  end

  def show
    @post = Post.find_by(id: params[:id], author_id: params[:user_id])
    raise ActiveRecord::RecordNotFound, 'Wrong post or user id' if @post.nil?

    render json: @post
  end
end
