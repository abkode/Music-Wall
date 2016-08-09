class RenameUpvoteTable < ActiveRecord::Migration
  def change
  	rename_table :upvote, :upvotes

  	change_table :upvotes do |t|
  		t.rename :songs_id, :song_id
  		t.rename :users_id, :user_id
  	end
  end
end
