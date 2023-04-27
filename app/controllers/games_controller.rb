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

  def show
    @game = Game.find_by(id: params[:id])
    render :show
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(
      result: params[:result],
      winner: params[:winner],
      image_url: params[:image_url],
    )
    render :show
  end





end
