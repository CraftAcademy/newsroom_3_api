source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rack-cors', require: 'rack/cors'
gem 'active_model_serializers'
gem 'devise_token_auth'
gem 'stripe-rails'
gem 'aws-sdk-s3'
gem 'geocoder'

group :development, :test do
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'pry-rails'
  gem 'shoulda-matchers'
  gem 'factory_bot_rails'
  gem 'coveralls', require: false
  gem 'stripe-ruby-mock'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
