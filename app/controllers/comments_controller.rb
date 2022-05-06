class CommentsController < ApplicationController
  def new
    @current_user = current_user
    @comment = Comment.new
  end

  def create
    @current_user = current_user
    @user_id = params[:user_id]
    @post_id = params[:post_id]

    comment = Comment.new(comment_params.merge(author_id: @current_user.id, post_id: @post_id))

    if comment.save
      redirect_to user_post_path(@user_id, @post_id), notice: 'Comment published'
    else
      redirect_to new_user_post_comment_path(@user_id, @post_id), alert: comment.errors.full_messages
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end
