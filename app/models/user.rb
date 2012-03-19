class User < ActiveRecord::Base
 include Gravtastic
	attr_accessible :role, 
									:sport, 
									:birthdate, 
									:ppg, 
									:rpg, 
									:apg, 
									:spg,
									:name, 
									:email, 
									:password, 
									:password_confirmation, 
									:gender, 
									:country, 
									:bio,
									:position,
									:height,
									:weight

  gravtastic :email
	#has_secure_password

	has_one :basketball
	has_many :microposts, :dependent => :destroy
	has_many :comments, :dependent => :destroy
	accepts_nested_attributes_for :microposts

	def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
		user.email = auth["info"]["email"]
  end
end
end
