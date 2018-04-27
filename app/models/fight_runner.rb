class FightRunner


  def initialize(fight)
    @fight = fight
  end

  def run_fight
    fight_recap = ""
    while @fight.first_character.life_score > 0 && @fight.second_character.life_score > 0
      if @fight.first_character.attack_score > @fight.second_character.attack_score
        @fight.second_character.life_score = @fight.second_character.life_score - 10
      elsif @fight.second_character.attack_score > @fight.first_character.attack_score
        @fight.first_character.life_score = @fight.first_character.life_score - 10
      end
    end

    if @fight.first_character.life_score == 0
      fight_recap = "#{@fight.second_character.name} won, life_score : #{@fight.second_character.life_score}"
    elsif @fight.second_character.life_score == 0
      fight_recap = "#{@fight.first_character.name} won, life_score : #{@fight.first_character.life_score}"
    end

    fight_recap
  end
end
