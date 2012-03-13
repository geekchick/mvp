class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :micropost

	attr_accessible :reply


	validates :reply, presence: true, length: { maximum: 140 }
	validates :user_id, presence: true

	default_scope order: 'comments,created_at DESC'

end
