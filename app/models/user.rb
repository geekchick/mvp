class User < ActiveRecord::Base
 include Gravtastic
  gravtastic :email

	attr_accessible :role, :sport, :birthdate, :ppg, :rpg, :apg

	has_one :profile
	has_one :basketball
	has_many :micropost

	def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
		user.email = auth["info"]["email"]
  end
end
end
