class WelcomeController < ApplicationController

  def show_first_character_picture
    first_character = Character.find(welcome_params)
    @first_character_picture = get_character_picture(first_character)

    respond_to do |format|
      format.js
    end
  end

  def show_second_character_picture
    second_character = Character.find(welcome_params)
    @second_character_picture = get_character_picture(second_character)

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

    def welcome_params
      params.require(:id)
    end
end
