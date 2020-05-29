class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :show, :new, :update, :destroy, :create]

  def index
    @post = Post.new
    @posts = Post.all
  end


  def show
    @posts = Post.find(params[:id])
    @comment = Comment.new
  end


  def new
    @post = Post.new
  end


  def edit
    @post = Post.find(params[:id])
  end


  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post.id)
    else
      render("posts/index")
    end
  end


  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.save
      flash[:notice] = "編集しました"
      redirect_to post_path(@post.id)
    else
      render("posts/edit")
    end
  end


  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private

  def post_params
      params.require(:post).permit(:club_id, :title, :content, :post_image)
  end
end
