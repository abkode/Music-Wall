class AddSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :song_title
      t.string :author
      t.string :url
      t.date :created_at
      t.date :updated_at
    end
  end
end
