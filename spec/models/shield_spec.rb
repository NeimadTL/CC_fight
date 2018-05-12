require 'rails_helper'

RSpec.describe Shield, type: :model do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of(:name) }

  it { is_expected.to have_many(:fights) }

end
