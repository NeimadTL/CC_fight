class Weapon < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  before_create :set_attack_score

  def set_attack_score
    self.attack_score = Random.new.rand(1..50)
  end
end
