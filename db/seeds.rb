# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Character.delete_all
Fight.delete_all


Character.create!(name: 'Game b0$$', life_score: 100, attack_score: 95)
Character.create!(name: 'STr0ng mOn$tA', life_score: 100, attack_score: 70)
Character.create!(name: 'C@pt@in c0ntr@t', life_score: 100, attack_score: 55)
Character.create!(name: 'N0N@me', life_score: 100, attack_score: 30)
Character.create!(name: 'CallMeLooser||KillMe', life_score: 100, attack_score: 10)
