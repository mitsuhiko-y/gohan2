class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to post_path(@comment.post.id, anchor: 'new_comment'), notice: "コメントできました"
    else
      flash.now[:alert] = 'コメントを入力してください。'
      render post_path(@comment.post)
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to post_path(comment.post.id, anchor: 'new_comment'), notice: "コメントを削除しました"

  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end

end