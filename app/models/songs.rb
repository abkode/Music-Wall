class Songs < ActiveRecord::Base

  validates :song_title, presence: true, length: { maximum: 40 }
  validates :author, presence: true, length: { maximum: 40 }
  # validates :url, presence: true, length: { maximum: 25 }
  
end
