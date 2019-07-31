class CommentsController < ApplicationController


  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @comment = Comment.find_by(params[:id])

    render json: @comment
  end

  def new
    @comment = Comment.new
    render json: @comment
  end

  def create
    @comment = Comment.find_or_create_by(comment_params)
    render json: @comment
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :trip_id)
  end

end
