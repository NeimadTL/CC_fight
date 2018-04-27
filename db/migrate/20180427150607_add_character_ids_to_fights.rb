class AddCharacterIdsToFights < ActiveRecord::Migration
  def change
    add_column :fights, :first_character_id, :integer
    add_column :fights, :second_character_id, :integer
  end
end
