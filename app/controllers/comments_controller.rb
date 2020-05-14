class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      respond_to do |format|
        format.json
      end
    else
      flash.now[:alert] = 'コメントを入力してください。'
      render post_path(@comment.post)
    end
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
    if @comment.save
      redirect_to post_path(@comment.post.id), notice: "コメント更新できました"
    else
      flash.now[:alert] = '空欄では更新出来ません'
      render action: :edit
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to post_path(comment.post.id), notice: "コメントを削除しました"
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, post_id: params[:post_id])
  end

end