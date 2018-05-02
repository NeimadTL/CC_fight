class Weapon < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  def set_attack_score
    self.attack_score = Random.new.rand(1..50)
  end
end
