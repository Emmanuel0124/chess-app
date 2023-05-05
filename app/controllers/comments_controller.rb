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
      content: params[:content],
      user_id: current_user.id,
      game_id: params[:id],
    )
    # redirect_to "/comments"
  end
  
  
  
end
