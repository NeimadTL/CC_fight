class FightRunner


  def initialize(fight)
    @fight = fight
  end

  def run_fight
    while @fight.first_character.life_score > 0 && @fight.second_character.life_score > 0
      if @fight.first_character.attack_score > @fight.second_character.attack_score
        @fight.second_character.life_score = @fight.second_character.life_score - 10
      elsif @fight.second_character.attack_score > @fight.first_character.attack_score
        @fight.first_character.life_score = @fight.first_character.life_score - 10
      end
    end

    if @fight.first_character.life_score == 0
      @fight.update_attributes(winner_id: @fight.second_character.id)
    elsif @fight.second_character.life_score == 0
      @fight.update_attributes(winner_id: @fight.first_character.id)
    end
  end
end
