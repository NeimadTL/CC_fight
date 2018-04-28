# require 'rails_helper'
#
# RSpec.describe FightRunner, type: :model do
#
#   Character.delete_all
#   Fight.delete_all
#
#   strong_monster = Character.create!(name: "Strong monster", life_score: 50, attack_score: 95)
#   weak_monster = Character.create!(name: "Weak monster", life_score: 35, attack_score: 60)
#   fight = Fight.create!(first_character: strong_monster, second_character: weak_monster)
#
#   puts "#{fight.nil?}"
#
#
#   describe "when there is a fight" do
#
#     it "the character with the strongest attack score should win" do
#
#       expect { FightRunner.new(fight).run_fight }.to
#         match("#{strong_monster.name} won, life_score : #{strong_monster.life_score}")
#     end
#   end
#
# end
