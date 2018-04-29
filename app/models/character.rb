class Character < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :life_score, presence: true, numericality: { only_integer: true }
  validates :attack_score, presence: true, numericality: { only_integer: true }

  has_many :fights, :foreign_key => :first_character_id, :dependent => :destroy
  has_many :fights, :foreign_key => :second_character_id, :dependent => :destroy

  mount_uploader :picture, PictureUploader

end
