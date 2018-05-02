class AddWeaponIdsToFights < ActiveRecord::Migration
  def change
    add_column :fights, :first_character_weapon_id, :integer
    add_column :fights, :second_character_weapon_id, :integer
  end
end
