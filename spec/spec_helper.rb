ENV['RACK_ENV'] = "test"

require File.join(File.dirname(__FILE__), "..", "config", "init.rb")

Bundler.require(:test)

#
# RSpec setup
#

require "rspec"
require "rack/test"

RSpec.configure do |config|
  config.include Rack::Test::Methods
end

def app
  Sinatra::Application
end

#
# Rack setup
#

set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false
