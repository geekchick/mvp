class Comment < ActiveRecord::Base
	attr_accessible :content, :user_id, :micropost_id

	belongs_to :micropost
	belongs_to :user

	validates :content, presence: true, length: {maximum: 140 }
	
  #default_scope order: 'comments.created_at DESC'

end
