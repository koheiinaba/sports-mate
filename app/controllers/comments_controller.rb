class CommentsController < ApplicationController


  def create
    @posts = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)
    @comment.post_id = @posts.id
    @comment.save
  end


  def destroy
    @comment = Comment.find(params[:post_id])
    @posts = @comment.post
    if @comment.user_id != current_user.id
      redirect_to request.referer
    end
    @comment.destroy
  end

  private

    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :comment)
    end
end

