class PostsController < ApplicationController
  before_action :set_group

  # def initialize(shopname, view, image, content)
  #   @shopname = shopname
  #   @view = view
  #   @image = image
  #   @content = content
  # end

  def index
    @posts = Post.all.order("created_at DESC").page(params[:page]).per(10)
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
    Post.create(post_params)
    redirect_to posts_path, notice: "投稿できました"

    # @post = @user.posts.new(post_params)
    # if @posts.save
    #   respond_to do |format|
    #     format.html { redirect_to posts_path, notice: "投稿できました" }
    #     format.json
    #   end
    # else
    #   @messages = @group.messages.includes(:user)
    #   flash.now[:alert] = 'メッセージを入力してください。'
    #   render :index
    # end
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    @like = Like.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post), notice: "投稿できました"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: "削除しました"
  end

  private

  def post_params
    params.require(:post).permit(:shopname, :view, :image, :content, :image_cache).merge(user_id: current_user.id)
  end

  def set_group
    @user = User.find_by(params[:user_id])
  end
end