class User < ActiveRecord::Base
	has_many :upvotes
  # validates :song_title, presence: true, length: { maximum: 40 }
  # validates :author, presence: true, length: { maximum: 40 }
  # validates :url, presence: true, length: { maximum: 25 }
  
  def has_already_upvoted?(song)
  	self.upvotes.any? do |upvote|
  		upvote.song_id == song.id
  	end
  end
end
