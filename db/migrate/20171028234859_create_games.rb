class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.string :video_id
      t.string :link

      t.timestamps
    end
  end
end
