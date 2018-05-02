class Character < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :attack_score, presence: true,
    numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 200 }

  has_many :fights, :foreign_key => :first_character_id, :dependent => :destroy
  has_many :fights, :foreign_key => :second_character_id, :dependent => :destroy

  mount_uploader :picture, PictureUploader

  before_create :set_life_score

  private
    def set_life_score
      self.life_score = 100
    end

end
