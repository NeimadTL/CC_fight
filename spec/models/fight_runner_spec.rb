require 'rails_helper'

RSpec.describe FightRunner, type: :model do

  fixtures :all


  describe "when there is a fight" do

    it "the character with the strongest attack score should win" do
      stronger_monster = characters(:game_boss)
      weaker_monster = characters(:game_looser)
      fight = fights(:boss_vs_looser_fight)
      winner = FightRunner.new(fight).run_fight
      expect(winner.id).to eq stronger_monster.id
      expect(winner.name).to match("#{stronger_monster.name}")
    end
  end

  describe "when there is a fight with the same total attack score for each character" do

    it "the second character should win" do
      fight = fights(:boss_vs_boss_fight)
      winner = FightRunner.new(fight).run_fight
      expect(winner.id).to eq fight.second_character.id
      expect(winner.name).to match("#{fight.second_character.name}")
    end
  end

end
