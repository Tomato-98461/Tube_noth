class PostsController < ApplicationController
  def index
    @posts = current_user.posts.includes(:tube).order("created_at DESC").page(params[:page]).per(9)
  end

  def new
    @post = Post.new
  end

  def create
    @title = Post.url_check(params[:url])
    unless @title.empty?
      @tag = Post.tag_get(params[:url])
      @image = Post.image_get(params[:url])
      @tube = Tube.create(title: @title,tag: @tag,thmb: @image)
      Post.create(title: @title,text: post_params[:text],tube_id: @tube.id,user_id: current_user.id)
      redirect_to root_path
    else
      redirect_to 'new'
    end
  end

  private
  def post_params
    params.permit(:text)
  end
end
