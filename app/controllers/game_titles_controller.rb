class GameTitlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_game_title, only: [:show, :edit, :update, :destroy]

  def index
    @game_titles = GameTitle.order(name: :asc).all
  end

  def show
  end

  def new
    @game_title = GameTitle.new
  end

  def edit
  end

  def create
    @game_title = GameTitle.new(game_title_params)

    if @game_title.save
      redirect_to @game_title, notice: 'Game title was successfully created.'
    else
      render :new
    end
  end

  def update
    if @game_title.update(game_title_params)
      redirect_to @game_title, notice: 'Game title was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @game_title.destroy
    redirect_to game_titles_url, notice: 'Game title was successfully destroyed.'
  end

  private
    def set_game_title
      @game_title = GameTitle.find(params[:id])
    end

    def game_title_params
      params.require(:game_title).permit(:name)
    end
end
