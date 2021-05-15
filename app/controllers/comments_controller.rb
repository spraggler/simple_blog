class CommentsController < ApplicationController
  before_action :set_comment, only: [:show]


  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id].to_i

    if @comment.save
      redirect_to posts_url
    else
      render 'new'
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:message, :post_id)
  end
end