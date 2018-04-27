class CharactersController < ApplicationController

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

  private
    def character_params
      params.require(:character).permit(:name, :life_score, :attack_score)
    end
end
