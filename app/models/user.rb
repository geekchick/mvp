class User < ActiveRecord::Base
	attr_accessible :role, :sport, :birthdate

	has_one :profile
	has_one :basketball
	has_many :micropost

	def self.create_with_omniauth(auth)
  create! do |user|
    user.provider = auth["provider"]
    user.uid = auth["uid"]
    user.name = auth["info"]["name"]
  end
end


end
