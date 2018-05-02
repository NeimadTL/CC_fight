class Character < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  has_many :fights, :foreign_key => :first_character_id, :dependent => :destroy
  has_many :fights, :foreign_key => :second_character_id, :dependent => :destroy

  mount_uploader :picture, PictureUploader

  before_create :set_life_score
  before_create :set_attack_score

  private
    def set_life_score
      self.life_score = 100
    end

    def set_attack_score
      self.attack_score = Random.new.rand(1..100)
    end

end
