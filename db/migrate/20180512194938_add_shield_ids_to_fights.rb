class AddShieldIdsToFights < ActiveRecord::Migration
  def change
    add_column :fights, :first_character_shield_id, :integer
    add_column :fights, :second_character_shield_id, :integer
  end
end
