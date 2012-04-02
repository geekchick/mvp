class Comment < ActiveRecord::Base
	attr_accessible :content, :user_id, :micropost_id

	belongs_to :micropost
	belongs_to :user

	validates :content, presence: true, length: {maximum: 140 }
	
	Comment.find_by_sql("SELECT content FROM comments ORDER BY created_at DESC")

end
