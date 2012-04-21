module ApplicationHelper
	def avatar_url(user)
		default_url = "http://www.gravatar.com/avatar/00000000000000000000000000000000?d=mm"
		gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
		"http://gravatar.com/avatar/#{gravatar_id}.png?s=48&d=#{CGI.escape(default_url)}"

	end
end
