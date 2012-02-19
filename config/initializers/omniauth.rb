Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '163542930420008', 'e98012ccee76b6a39d9eddaaf8351001'
	provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
}
	
end

