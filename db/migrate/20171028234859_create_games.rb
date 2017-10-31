class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      #t.image1 :string
      #t.image2 :string
      #t.image3 :string
      t.string :video_url
      t.string :link

      t.timestamps
    end
  end
end
