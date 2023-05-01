class GamesController < ApplicationController
  def index
    p current_user
    @games = Game.all
    render :index
  end

  def new
    @game = Game.new
    render :new
  end

  def create
    @game = Game.create(
      result: params[:game][:result],
      winner: params[:game][:winner],
      image_url: params[:game][:image_url],
    )
    redirect_to "/games"
  end

  def show
    @game = Game.find_by(id: params[:id])
    render :show
  end

  def edit
    @game = Game.find_by(id: params[:id])
    render :edit
  end

  def update
    @game = Game.find_by(id: params[:id])
    @game.update(
      result: params[:game][:result],
      winner: params[:game][:winner],
      image_url: params[:game][:image_url]
    )
    redirect_to "/games"
  end 





end
