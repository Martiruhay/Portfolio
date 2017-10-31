class AddImagesColumnsToGames < ActiveRecord::Migration[5.0]
  
  def up
    add_attachment :games, :image1
    add_attachment :games, :image2
    add_attachment :games, :image3
  end

  def down
    remove_attachment :games, :image1
    remove_attachment :games, :image2
    remove_attachment :games, :image3
  end
  
end
