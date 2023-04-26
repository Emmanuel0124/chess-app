class GamesController < ApplicationController
  def index
    @games = Game.all
    render :index
  end

  def create
    @game = Game.create(
      result: params[:result],
      winner: params[:winner],
      image_url: params[:image_url],
    )
    render :show

  end

end
