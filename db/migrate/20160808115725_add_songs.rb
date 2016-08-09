class AddSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :users		
      t.string :song_title
      t.string :author
      t.string :url
      t.timestamps
      # t.timesstamps
    end
  end
end
