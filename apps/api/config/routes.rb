# Configure your routes here
# See: https://guides.hanamirb.org/routing/overview
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }

resources :schedules, only: %i[index show create update destroy]
resources :tasks, only: %i[index show create update destroy]
