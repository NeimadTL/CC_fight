class FightsController < ApplicationController


  def index
    @fights = Fight.order(created_at: :desc)
  end

  def create
    @fight = Fight.create(fight_params)

    if @fight.valid?
      winner = FightRunner.new(@fight).run_fight
      @fight.update_attributes(winner_id: winner.id)
      flash[:notice] = "The fight has happened, #{winner.name} won"
    else
      flash[:alert] = 'The fight hasn\'t happened'
    end
    redirect_to root_path
  end

  private
    def fight_params
      params.require(:fight).permit(:first_character_id, :second_character_id,
        :first_character_weapon_id, :second_character_weapon_id, :first_character_shield_id,
        :second_character_shield_id)
    end

end
