require 'rails_helper'

RSpec.describe Character, type: :model do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of(:name) }

  it { should validate_presence_of :attack_score }
  it { should validate_numericality_of(:attack_score).only_integer }
  it { should allow_value(50).for(:attack_score) }
  it { should_not allow_value(-1).for(:attack_score) }
  it { should_not allow_value(201).for(:attack_score) }



  it { is_expected.to have_many(:fights) }

end
