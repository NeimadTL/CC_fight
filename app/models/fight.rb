class Fight < ActiveRecord::Base

  validates :first_character_id, presence: true
  validates :second_character_id, presence: true
  validates :first_character_weapon_id, presence: true
  validates :second_character_weapon_id, presence: true


  belongs_to :first_character, :foreign_key => :first_character_id, class_name: 'Character'
  belongs_to :second_character, :foreign_key => :second_character_id, class_name: 'Character'
  belongs_to :winner, :foreign_key => :winner_id, class_name: 'Character'
  belongs_to :first_character_weapon, :foreign_key => :first_character_weapon_id, class_name: 'Weapon'
  belongs_to :second_character_weapon, :foreign_key => :second_character_weapon_id, class_name: 'Weapon'
end
