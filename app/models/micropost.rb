class Micropost < ActiveRecord::Base
	belongs_to :user

	#Validation
	validates :content, :length => { :maximum => 140 }
end
