class Fight < ActiveRecord::Base

  validates :first_character_id, presence: true
  validates :second_character_id, presence: true

  belongs_to :first_character, :foreign_key => :first_character_id, class_name: 'Character'
  belongs_to :second_character, :foreign_key => :second_character_id, class_name: 'Character'

end
