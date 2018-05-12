class CreateShields < ActiveRecord::Migration
  def change
    create_table :shields do |t|
      t.string :name
      t.integer :attack_score

      t.timestamps null: false
    end
  end
end
