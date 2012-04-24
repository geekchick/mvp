class User < ActiveRecord::Base
 include Gravtastic
	attr_accessible :role, 
									:current_team,
									:current_level,
								 :former_team,
								 :former_level,
									:sport, 
									:birthdate, 
									:ppg, 
									:rpg, 
									:apg, 
									:spg,
									:games_played,
									:minutes_per_game,
									:field_goal_made,
									:field_goal_attempt,
									:three_point_made,
									:three_point_attempt,
									:free_throw_made,
									:free_throw_attempt,
									:bpg,
									:name, 
									:email, 
									:password, 
									:password_confirmation, 
									:gender, 
									:country, 
									:bio,
									:position,
									:height,
									:weight,
									:video_url_1,
									:video_url_2,
									:video_url_3,
									:video_title

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
