# OmniAuth.config.full_host = Rails.env.production? ? 'https://skillbreak.com' : 'https://localhost:3000'

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook,
	Rails.application.credentials.dig(:development, :FACEBOOK_APP_ID),
	Rails.application.credentials.dig(:development, :FACEBOOK_APP_SECRET),
	redirect_uri: 'https://sb-social-media-login.herokuapp.com/auth/google_oauth2/callback',
	:provider_ignores_state => true
	
	provider :google_oauth2,
	Rails.application.credentials.dig(:development,	:GOOGLE_CLIENT_ID),
	Rails.application.credentials.dig(:development, :GOOGLE_CLIENT_SECRET)#,
	# scope: 'userinfo.email,userinfo.profile',
	# redirect_uri: 'https://localhost:3000/auth/google_oauth2/callback',
	# :provider_ignores_state => true,
	# :skip_jwt => true
end
