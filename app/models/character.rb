class Character < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :life_score, presence: true, numericality: { only_integer: true }
  validates :attack_score, presence: true, numericality: { only_integer: true }
  
end
