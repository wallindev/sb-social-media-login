# OmniAuth.config.full_host = Rails.env.production? ? 'https://skillbreak.com' : 'https://localhost:3000'

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook,
	Rails.application.credentials.dig(:development, :FACEBOOK_APP_ID),
	Rails.application.credentials.dig(:development, :FACEBOOK_APP_SECRET),
	:provider_ignores_state => true
	
	provider :google_oauth2,
	Rails.application.credentials.dig(:development,	:GOOGLE_CLIENT_ID),
	Rails.application.credentials.dig(:development, :GOOGLE_CLIENT_SECRET)#,
	# :provider_ignores_state => true
end
