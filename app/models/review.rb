class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :song
    validates :user_id, uniqueness: { scope: :song_id, message: "should upvote a song only once" }
  
end
