class UsersController < ApplicationController
  before_action :move_to_index

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC").page(params[:page]).per(5)
  end

  private

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end