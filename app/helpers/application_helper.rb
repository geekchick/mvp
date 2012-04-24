module ApplicationHelper
	def avatar_url(user)
		if user.provider == "facebook"
			"http://graph.facebook.com/#{user.uid}/picture"
    elsif user.provider == "twitter"

		elsif user.provider == "linkedin"
			"http://api.twitter.com/1/users/profile_image/#{user.uid}.format"
		else
			default_url = "http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm&?s=60"
			gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
			"http://gravatar.com/avatar/#{gravatar_id}.png?s=60&d=#{CGI.escape(default_url)}"

		end
	end
end
