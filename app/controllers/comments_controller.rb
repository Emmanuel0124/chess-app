class CommentsController < ApplicationController
  def index
    @game = Game.find(params[:game_id])
    @comments = @game.comments
    render json: @comments
  end

  def new
    @comment = Comment.new
    render :new
  end

  def create
    @comment = Comment.create(
      content: params[:content],
      user_id: current_user.id,
      game_id: params[:game_id],
    )
    render :show
  end
  
  
  
end
