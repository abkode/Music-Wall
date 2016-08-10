class AddReview < ActiveRecord::Migration
  def change
  	create_table :reviews do |t|
      t.belongs_to :song
      t.belongs_to :user		
      t.string :review
      t.integer :rating
      t.timestamps
    end
  end
end
