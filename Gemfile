source 'https://rubygems.org'

ruby '2.6.3'

gem 'rake'
gem 'hanami',       '~> 1.3'
gem 'hanami-model', '~> 1.3'
gem 'trailblazer-operation'
gem 'jwt_sessions'
gem 'readthis'
gem 'hiredis'
gem 'sidekiq'
gem 'action_policy'
# gem 'sneakers'
# gem 'celluloid'
# gem 'reel-rack'

gem 'pg'

group :development do
  # Code reloading
  # See: https://guides.hanamirb.org/projects/code-reloading
  gem 'shotgun', platforms: :ruby
  gem 'hanami-webconsole'
end

group :test, :development do
  gem 'dotenv', '~> 2.4'
end

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'fabrication'
end

group :production do
  # gem 'puma'
end
