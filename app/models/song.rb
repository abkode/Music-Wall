class Song < ActiveRecord::Base
  has_many :upvotes
  belongs_to :user
  validates :song_title, presence: true, length: { maximum: 40 }
  validates :author, presence: true, length: { maximum: 40 }
  
end
