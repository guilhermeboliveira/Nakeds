class GamesController < ApplicationController
  def index
    @games = Game.all
    respond_with(@games)
  end

  def show
    @game = Game.find(params[:id])
    respond_with(@game)
  end

  def new
    @game = Game.new
    respond_with(@game)
  end

  def edit
    @game = Game.find(params[:id])
  end

  def create
    @game = Game.new(params[:game])
    @game.save
    respond_with(@game)
  end

  def update
    @game = Game.find(params[:id])
    @game.update_attributes(params[:game])
    respond_with(@game)
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    respond_with(@game)
  end
end