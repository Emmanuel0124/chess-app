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
      result: params[:result],
      winner: params[:winner],
      image_url: params[:image_url],
      picture: params[:picture],
      number_of_moves: params[:number_of_moves],
      black_player: params[:black_player],
      white_player: params[:white_player],
      loser: params[:loser],
    )
    render :show
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
      result: params[:result],
      winner: params[:winner],
      image_url: params[:image_url],
      picture: params[:picture],
      number_of_moves: params[:number_of_moves],
      black_player: params[:black_player],
      white_player: params[:white_player],
      loser: params[:loser],
    )
    render :show
  end 





end
