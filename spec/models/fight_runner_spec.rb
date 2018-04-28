require 'rails_helper'

RSpec.describe FightRunner, type: :model do

  Character.delete_all
  Fight.delete_all

  stronger_monster = Character.create!(name: "Strong monster", life_score: 50, attack_score: 95)
  weaker_monster = Character.create!(name: "Weak monster", life_score: 35, attack_score: 60)
  fight = Fight.create!(first_character: stronger_monster, second_character: weaker_monster)


  describe "when there is a fight" do

    it "the character with the strongest attack score should win" do
      winner = FightRunner.new(fight).run_fight
      expect(winner.id).to eq stronger_monster.id
      expect(winner.name).to match("#{stronger_monster.name}")
    end
  end

end
