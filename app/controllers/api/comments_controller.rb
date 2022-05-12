class Api::CommentsController < ApplicationController
  include ApiExceptionHandler

  def index
    @post = Post.find_by(id: params[:post_id], author_id: params[:user_id])
    raise ActiveRecord::RecordNotFound, 'Wrong post or user id' if @post.nil?

    render json: @post.comments
  end
end
