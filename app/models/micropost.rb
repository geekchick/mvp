class Micropost < ActiveRecord::Base
	attr_accessible :content
  belongs_to :user
	has_many :comments, :dependent => :destroy
  
	validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

	accepts_nested_attributes_for :comments

default_scope order: 'microposts.created_at DESC'


end
