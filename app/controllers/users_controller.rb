class UsersController < ApplicationController
  def index
  end

  def new
  end

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    # @tweets = user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end

  def edit
  end

  def update
  end




end
