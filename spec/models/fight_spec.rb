require 'rails_helper'

RSpec.describe Fight, type: :model do

  it { should validate_presence_of :first_character_id }
  it { is_expected.to belong_to(:first_character) }

  it { should validate_presence_of :second_character_id }
  it { is_expected.to belong_to(:second_character) }

end
