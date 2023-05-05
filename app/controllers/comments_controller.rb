class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render :index
  end

  def new
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.create(
      content: params[:comment][:content],
      user_id: params[:comment][:user_id],
      game_id: params[:comment][:game_id],
    )
    redirect_to "/comments"
  end
  
  
  
end
