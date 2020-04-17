class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
    @post = @comment.post
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@comment.post.id), notice: "コメント更新できました"
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post.id), notice: "削除しました"
  end


  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end

end