class PostsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.all
  end


  def show
  end


  def new
    @post = Post.new
  end


  def edit
  end


  def create
    @post = Post.new(post_params)
    @post.club_id = current_user.id
    if @post.save
      redirect_to post_path(@post.id)
    else
      render("posts/index")
    end
  end


  def update
  end


  def destroy
  end

  private

    def post_params
      params.require(:post).permit(:user_id, :club_id, :title, :content, :post_image_id)
    end

end
