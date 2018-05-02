# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Character.delete_all
Fight.delete_all
Weapon.delete_all

def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/#{file_name}"))
end

Character.create!(name: 'Game b0$$', picture: seed_image('game_boss.jpg'))
Character.create!(name: 'STr0ng mOn$tA', picture: seed_image('strong_monsta.jpg'))
Character.create!(name: 'C@pt@in c0ntr@t', picture: seed_image('captain_contrat.jpeg'))
Character.create!(name: 'Müm/\/\Y', picture: seed_image('mummy.jpg'))
Character.create!(name: 'CallMeLooser||KillMe', picture: seed_image('call_me_looser_or_kill_me.jpg'))

Weapon.create!(name: 'Bomb')
Weapon.create!(name: 'Knife')
Weapon.create!(name: 'AK47')
Weapon.create!(name: 'Sword')
Weapon.create!(name: 'Hammer')
