class RemoveFightIdFromCharacters < ActiveRecord::Migration
  def change
    remove_column :characters, :fight_id
  end
end
