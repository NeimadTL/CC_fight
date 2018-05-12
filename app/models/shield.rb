class Shield < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  has_many :fights, :foreign_key => :first_character_shield_id, :dependent => :destroy
  has_many :fights, :foreign_key => :second_character_shield_id, :dependent => :destroy

  before_create :set_attack_score

  def set_attack_score
    self.attack_score = Random.new.rand(1..50)
  end

end
