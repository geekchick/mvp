Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '163542930420008', 'e98012ccee76b6a39d9eddaaf8351001'
  provider :twitter, 'eLD0Gqkv81whv9D4w1IhuA', '3rln1BqxNF3vHVSNk2mYNoyp1L1FH1YmbdI5pEnzMY'
	provider :identity, on_failed_registration: lambda { |env|
    IdentitiesController.action(:new).call(env)
}


	
end

