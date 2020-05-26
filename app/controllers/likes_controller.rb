class LikesController < ApplicationController

  # def create
  #   @like = current_user.likes.create(post_id: params[:post_id])
  #   @like.save
  # end

  # def destroy
  #   @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
  #   @like.destroy
  # end

  before_action :set_variables
  
  def like
    like = current_user.likes.new(post_id: @post.id, user_id: current_user.id)
    like.save
  end

  def unlike
    like = current_user.likes.find_by(post_id: @post.id)
    like.destroy
  end

  private

  def set_variables
    @post = Post.find(params[:post_id])
    @id_name = "#like-link-#{@post.id}"
  end

  
  
end