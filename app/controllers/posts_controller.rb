class PostsController < ApplicationController
  before_action :set_group
  before_action :move_to_index
  before_action :move_to_mypage, only: [:edit]

  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(5)
    @lastpost = Post.last
    @secondlastpost = Post.last(2)[0]
    @thirdlastpost = Post.last(3)[0]
    @fourthlastpost = Post.last(4)[0]
    @fifthlastpost = Post.last(5)[0]
    @sixthlastpost = Post.last(6)[0]
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to posts_path, notice: "投稿できました" 
    else
      flash.now[:alert] = '足りない項目を入力してください'
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user).all.order("created_at DESC").page(params[:page]).per(5)
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    if @post.save
      redirect_to post_path(@post), notice: "投稿を編集できました" 
    else
      flash.now[:alert] = '足りない項目を入力してください'
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path, notice: "削除しました"
  end

  private

  def post_params
    params.require(:post).permit(:shopname, :view, :image, :content, :image_cache).merge(user_id: current_user.id)
  end

  def set_group
    @user = User.find_by(params[:user_id])
  end

  def move_to_index
    redirect_to root_path unless user_signed_in?
  end

  def move_to_mypage
    @post = Post.find(params[:id])
    redirect_to user_path(current_user) unless current_user.id == @post.user.id
  end

end