class CommentsController < ApplicationController
  before_action :find_post

  def create
    @comment = @post.comments.new(comments_params)

    if @comment.save
      flash[:success] = "Your comment has been posted."
    else
      flash[:error] = "Something went wrong while posting your comment."
    end

    redirect_to post_path(@post)
  end

  def destroy
    @comment = @post.comments.find(params[:id])

    if @comment.destroy
      flash[:success] = "Your comment has been deleted."
    else
      flash[:error] = "Something went wrong while deleting your comment."
    end

    redirect_to post_path(@post)
  end

  private
  def find_post
    @post = Post.find(:post_id)
  end

  def comments_params
    params.require(:comment).permit(:title, :comment, :user_id)
  end
end
