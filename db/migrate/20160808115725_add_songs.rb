class AddSongs < ActiveRecord::Migration
  def change
    create_table :music do |t|
      t.string :song_title
      t.string :author
      t.string :url
    end
  end
end
