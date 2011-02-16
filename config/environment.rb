#
# Global settings
#

set :root, File.expand_path("app")

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

logger_config = {
  :development => {
    :file_name => "log/development.log",
    :max_old_files => 10,
    :max_file_size => 1024000,
    :level => Logger::DEBUG
  },
  
  :test => {
    :file_name => "log/test.log",
    :max_old_files => 10,
    :max_file_size => 1024000,
    :level => Logger::DEBUG
  },
  
  :production => {
    :file_name => "log/production.log",
    :max_old_files => 10,
    :max_file_size => 1024000,
    :level => Logger::INFO
  }
}

set :logger_config, logger_config[settings.environment]

configure do
  use Rack::CommonLogger, File.new(settings.logger_config[:file_name], "a+")
end
