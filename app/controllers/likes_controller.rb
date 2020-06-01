class LikesController < ApplicationController

  def create
    @like = current_user.likes.create(post_id: params[:post_id])
    @like.save
    if @like.save
      redirect_to post_path(@like.post), notice: "いいねしました" 
    end
  end

  def destroy
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    if @like.destroy
      redirect_to post_path(@like.post), notice: "いいねを取り消しました" 
    end
  end  
  
end