class AddPictureToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :picture, :string
  end
end
