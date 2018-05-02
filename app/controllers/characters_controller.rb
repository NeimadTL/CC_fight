class CharactersController < ApplicationController

  before_action :set_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.order(created_at: :desc)
  end

  def show
    @won_fights_count = Fight.where(winner: @character).count
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.create(character_params)

    if @character.valid?
      flash[:notice] = 'Character created with success'
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @character.update_attributes(character_params)

    if @character.valid?
      flash[:notice] = 'Character updated with success'
      redirect_to characters_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @character.destroy
    flash[:notice] = 'Character deleted with success'
    redirect_to characters_path
  end

  private
    def character_params
      params.require(:character).permit(:name, :picture)
    end

    def set_character
      @character = Character.find(params[:id])
    end
end
