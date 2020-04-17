class UsersController < ApplicationController
  before_action :set_group
  
  def index
    @users = User.all
    # return nil if params[:keyword] == ""
    # @users = User.where(['name LIKE ?', "%#{params[:keyword]}%"] ).where.not(id: current_user.id).limit(10)
    # respond_to do |format|
    #   format.html
    #   format.json
    # end
  end

  def new
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order("created_at DESC").page(params[:page]).per(10)
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_group
    @post = Post.find_by(params[:post_id])
  end
end