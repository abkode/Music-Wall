class Upvote < ActiveRecord::Base
	belongs_to :user
	belongs_to :song
  # validates :song_title, presence: true, length: { maximum: 40 }
  # validates :author, presence: true, length: { maximum: 40 }
  # validates :url, presence: true, length: { maximum: 25 }
    validates :user_id, uniqueness: { scope: :song_id, message: "should upvote a song only once" }
  
end
