class AddWinnerToFights < ActiveRecord::Migration
  def change
    add_reference :fights, :winner, index: true, foreign_key: true
  end
end
