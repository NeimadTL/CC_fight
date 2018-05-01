class AddWinnerToFights < ActiveRecord::Migration
  def change
    # add_reference :fights, :winner, index: true, foreign_key: true
    add_column :fights, :winner_id, :integer, foreign_key: true
    add_index :fights, :winner_id
  end
end
