class CommentsController < ApplicationController
  def create
    @current_user = current_user
    user_id = params[:user_id]
    post_id = params[:post_id]

    comment = Comment.new(comment_params.merge(author_id: @current_user.id, post_id:))

    if comment.save
      redirect_to user_post_path(user_id, post_id), notice: 'Comment published'
    else
      redirect_to user_post_path(user_id, post_id), alert: 'Something went wrong'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text)
  end
end