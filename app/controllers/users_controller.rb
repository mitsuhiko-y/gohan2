class UsersController < ApplicationController
  before_action :set_group
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @users = User.all
  end

  def new
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC").page(params[:page]).per(5)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :image, :image_cache)
  end

  def set_group
    @post = Post.find_by(params[:post_id])
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end
end