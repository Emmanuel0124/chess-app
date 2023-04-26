class GamesController < ApplicationController
  def index
    @games = Game.all
    render :index
  end
end
