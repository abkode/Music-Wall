class AddUpvote < ActiveRecord::Migration
  def change
    create_table :upvote do |t|
      t.belongs_to :songs
      t.belongs_to :users     
      t.timestamps
    end
  end
end
