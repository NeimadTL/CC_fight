class WelcomeController < ApplicationController

  def show_first_character_picture
    first_character = Character.find(params[:id])
    if first_character.picture.present?
      @first_character_picture = first_character.picture
    else
      @first_character_picture = ActionController::Base.helpers.asset_path('default-picture.png')
    end

    respond_to do |format|
      format.js
    end
  end

end
