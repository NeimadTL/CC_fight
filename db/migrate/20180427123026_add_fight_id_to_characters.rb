class AddFightIdToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :fight_id, :integer
  end
end
