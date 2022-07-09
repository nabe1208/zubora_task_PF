class CommentsController < ApplicationController

# routesのみ編集済7/4

  def show
    @user = User.find(params[:id])
    @comment = Comment.new
  end

  def create
    user = User.find(params[:comment_id])
    comment = current_user.comments.new(comment_params)
    comment.comment_id = user.id
    comment.save
    redirect_to user_path(user)
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to comment_path(params[:user_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
