require 'rails_helper'

RSpec.describe Fight, type: :model do

  it { is_expected.to have_many(:characters) }
  
end
