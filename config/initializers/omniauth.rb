# OmniAuth.config.logger = Rails.logger

# OmniAuth.config.full_host = Rails.env.production? ? 'https://skillbreak.com' : 'https://localhost:3000'

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, Rails.application.credentials.dig(:development, :FACEBOOK_APP_ID), Rails.application.credentials.dig(:development, :FACEBOOK_APP_SECRET)#,
	# :provider_ignores_state => true
	
	provider :google_oauth2, Rails.application.credentials.dig(:development, :GOOGLE_CLIENT_ID), Rails.application.credentials.dig(:development, :GOOGLE_CLIENT_SECRET)#, scope: 'userinfo.email,userinfo.profile', redirect_uri: 'https://localhost:3000/auth/google_oauth2/callback', :provider_ignores_state => true#, :skip_jwt => true 


	# provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'],
	# scope: 'email,public_profile',
	# display: 'popup',
	# client_options: {
	# 	site: 'https://graph.facebook.com/v7.0',
	# 	authorize_url: "https://www.facebook.com/v7.0/dialog/oauth?
	# 		client_id={app-id}
	# 		&redirect_uri={redirect-uri}
	# 		&state={state-param}"
	# },
	# :provider_ignores_state => true

	# provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'],
	# scope: 'email,public_profile', display: 'popup', client_options: {
	# 	site: 'https://graph.facebook.com/v10.0',
	# 	authorize_url: "https://www.facebook.com/v10.0/dialog/oauth"
	# }, :provider_ignores_state => true

	# provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'], 
	# 	scope: 'email,public_profile',
	# 		client_options: {
	# 			site: 'https://graph.facebook.com/v10.0',
	# 			authorize_url: "https://www.facebook.com/v10.0/dialog/oauth"
	# 		},
	# 		# To prevent CSRF (Cross-site request forgery) error
	# 		:provider_ignores_state => true

	# provider :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET'],
	#		:scope => 'email,public_profile',
	#		:client_options => {
	#				site: 'https://graph.facebook.com/v10.0',
	#				authorize_url: "https://www.facebook.com/v10.0/dialog/oauth?client_id=#{ENV['FACEBOOK_APP_ID']}&client_secret=#{ENV['FACEBOOK_APP_SECRET']}&scope=email,public_profile&redirect_uri=https%3A//localhost%3A3000/auth/facebook/callback"
	#		},
	#		:token_params => { parse: :json },
	#		:provider_ignores_state => true

	# provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], scope: 'userinfo.email,userinfo.profile', redirect_uri: 'https://localhost:3000/auth/google_oauth2/callback', :provider_ignores_state => true#, :skip_jwt => true 
	# provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
end
