class FightRunner


  def initialize(fight)
    @fight = fight
  end

  # Makes the characters go at each other and returns the winner
  # The winner is the character with the most attack score
  def run_fight
    while @fight.first_character.life_score > 0 && @fight.second_character.life_score > 0
      if @fight.first_character.attack_score > @fight.second_character.attack_score
        @fight.second_character.life_score = @fight.second_character.life_score - 10
      elsif @fight.second_character.attack_score > @fight.first_character.attack_score
        @fight.first_character.life_score = @fight.first_character.life_score - 10
      end
    end

    if @fight.first_character.life_score <= 0
      @fight.second_character
    elsif @fight.second_character.life_score <= 0
      @fight.first_character
    end
  end
end
