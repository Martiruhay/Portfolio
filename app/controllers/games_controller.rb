class GamesController < ApplicationController
  include ApplicationHelper
  
  before_action :check_admin, except: [:index, :show]
  
  def index
    @games = Game.all.order("created_at desc").paginate(page: params[:page], per_page: 7)
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new game_params
    
    if @game.save
      redirect_to @game, notice: "Game created succesfully!"
    else
      render 'new'
    end
  end

  def show
    find_game
  end

  def edit
    find_game
  end

  def update
    find_game
    if @game.update game_params
      redirect_to @game, notice: "Game updated successfully!"
    else
      render 'edit'
    end
  end

  def destroy
    find_game
    @game.destroy
    redirect_to games_path
  end
    
################################################################################
  private
  
  def game_params
    params.require(:game).permit(:name, :description, :link, :video_url, :image1, :image2, :image3, :slug)
  end
  
  def find_game
    @game = Game.friendly.find(params[:id])
  end
  
end
