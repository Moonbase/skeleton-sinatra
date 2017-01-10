require_relative 'app/app'

# Uncomment to use Sentry error tracking
# if ENV['SENTRY_DSN']
#   require 'raven'
#   Raven.configure do |config|
#     config.dsn = ENV['SENTRY_DSN']
#   end
#   use Raven::Rack
# end

if ENV['RACK_ENV'] == 'development'
  use Rack::LiveReload, no_swf: true
  require 'rack-livereload'
end

run App
