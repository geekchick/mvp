class Comment < ActiveRecord::Base
	attr_accessible :content, :user_id, :micropost_id

	belongs_to :micropost
	belongs_to :user

	validates :content, presence: true, length: {maximum: 140 }
	
  #default_scope order: 'comments.created_at DESC'
	#Comment.select('ORDER BY(created_at DESC)')
	#SELECT comments from COMMENT ORDER BY created_at DESC;

 #Comment.count(:order => 'DATE(created_at) DESC', :group => ["DATE(created_at)"])
 #Comment.count(:order => 'DATE(created_at) DESC', :group => ["DATE(created_at)"]).each {|u| puts "#{u[0]} -> #{u[1]}" }

end
