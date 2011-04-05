# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Swarm3::Application.initialize!



config.action_mailer.delivery_method = :smtp
config.action_mailer.default_url_options = { :host => 'swarm-alpha3.heroku.com' }
