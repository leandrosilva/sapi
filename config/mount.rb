#
# Helpers
#

Dir["app/helpers/**/*.rb"].each  do |helper|
  require helper
end

helpers do
  include Rack::Utils
  include SAPI::Logger
end

#
# Models
#

Dir["app/models/**/*.rb"].each  do |model|
  require model
end

#
# Resources
#

Dir["app/resources/**/*.rb"].each  do |resource|
  require resource
end
