class FightsController < ApplicationController


  def index
    @fights = Fight.all
  end

  def create
    @fight = Fight.create(fight_params)

    if @fight.valid?
      fight_recap = FightRunner.new(@fight).run_fight
      flash[:notice] = "The fight has happened, #{@fight.winner.name} won"
    else
      flash[:alert] = 'The fight hasn\'t happened'
    end
    redirect_to root_path
  end

  private
    def fight_params
      params.require(:fight).permit(:first_character_id, :second_character_id)
    end

end
