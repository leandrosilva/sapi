require "config/init"

set :environment, :development
set :run, false
set :raise_errors, true
set :logging, true

run Sinatra::Application
