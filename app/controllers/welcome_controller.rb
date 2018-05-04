class WelcomeController < ApplicationController

  def show_character_picture
    character = Character.find(params[:id])
    @character_picture = get_character_picture(character)
    @first_character = params[:first_character]
    @second_character = params[:second_character]

    respond_to do |format|
      format.js
    end
  end


  private
    def get_character_picture(character)
      if character.picture.present?
        character.picture
      else
        ActionController::Base.helpers.asset_path('default-picture.png')
      end
    end

end
