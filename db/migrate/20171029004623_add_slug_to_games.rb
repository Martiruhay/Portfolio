class AddSlugToGames < ActiveRecord::Migration[5.0]
  def change
    add_column :games, :slug, :string
  end
end
