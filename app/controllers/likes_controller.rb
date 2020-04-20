class LikesController < ApplicationController

  def index
    @like = Like.find(params[:id])  
    @user = @like.user

    @user = User.find(params[:id])  

  end

  def create
    @like = current_user.likes.create(post_id: params[:post_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
  
end
