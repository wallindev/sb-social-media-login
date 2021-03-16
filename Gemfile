source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.1'

windows_os = (RbConfig::CONFIG['host_os'] =~ /mingw|mswin/i)

if !windows_os
  # Authentication, Authorization and Credentials
  gem 'bcrypt', '~> 3.1.7'
  # Database and data related
  gem 'pg', '~> 1.2.3'
else
  gem 'bcrypt', '~> 3.1.7-x64-mingw32'
  gem 'pg', '~> 1.2.3-x64-mingw32'
end

gem 'rails', '~> 5.2.1'

# Server
gem 'puma', '~> 5.1.1'

# Frontend stuff
gem 'sass-rails', '~> 6.0'
gem 'jquery-rails'
gem 'redcarpet', '~> 3.5.0'
gem 'rails-i18n'
gem 'webpacker', '>= 4.0.x'

# Authentication, Authorization and Credentials
gem 'pundit'
gem 'dotenv-rails', groups: [:development, :test]
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'koala'#, '~> 3.0'
gem 'jwt'

# External services/APIs
gem 'cloudinary', '~> 1.18.1'
gem 'stripe', '~>5.28.0'
gem 'mailgun-ruby', '~>1.2.0'
gem 'mailchimp-api', require: 'mailchimp'
gem 'newrelic_rpm'

# Other tools
gem 'awesome_print', :require => 'ap'
gem 'sucker_punch'
gem 'phony'
gem 'faker'
gem 'http'
gem 'sitemap_generator'
gem 'fog-aws'
gem 'pg_search'
gem 'pg_trgm' #trigram extension to pg_search
gem 'request_store' # Make calls to Thread not stick between requests
gem 'wicked_pdf' # Make pdf:s (gift cards)
gem 'wkhtmltopdf-binary'
gem 'graphql', '~> 1.11.6'


group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'spork', github: 'sporkrb/spork', branch: 'master'
  gem 'spork-rails', github: 'A-gen/spork-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'annotate'
  gem "better_errors"
  gem 'graphiql-rails'
  # Used to analyze the size of our gems. The larger a gem is the higher our initial memory on startup will be on Heroku
  gem 'derailed'
	# Enable the REPL and local/instance variable inspection
	gem 'binding_of_caller'
end

group :test do
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Nya
gem "activerecord", "~> 5.2"

gem "sqlite3", "~> 1.4"
