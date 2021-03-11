# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # Start page
  get '/pages/start_page'
  root to: 'pages#start_page'

  # Auth/OAuth controller/pages
  get '/oauth_authentications/start'
  get '/auth/:provider/callback', to: 'oauth_authentications#callback'
  match '/auth/failure', to: redirect('/'), via: [:get, :post]

end
