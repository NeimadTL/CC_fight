class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :life_score
      t.integer :attack_score

      t.timestamps null: false
    end
  end
end
