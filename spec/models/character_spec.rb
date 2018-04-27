require 'rails_helper'

RSpec.describe Character, type: :model do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of(:name) }

  it { should validate_presence_of :life_score }
  it { should validate_numericality_of(:life_score).only_integer }

  it { should validate_presence_of :attack_score }
  it { should validate_numericality_of(:attack_score).only_integer }

end
