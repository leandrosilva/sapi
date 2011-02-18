#
# Global settings
#

set :root, File.expand_path("app")

APPLICATION = YAML.load_file("config/application.yml")[settings.environment.to_s]
LOGGING = YAML.load_file("config/logging.yml")[settings.environment.to_s]
DATABASE = YAML.load_file("config/database.yml")[settings.environment.to_s]

#
# Auto-reload files and routes
#

configure :development do
  Sinatra::Application.reset!   # to reload routes and its contents
  use Rack::Reloader            # to reload required every files
end

#
# Logging
#

configure do
  SYSLOGGER = Slogger::Logger.new LOGGING["app"], LOGGING["level"], LOGGING["facility"]

  use Slogger::Rack::RequestLogger, SYSLOGGER
end
