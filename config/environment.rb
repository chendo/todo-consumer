# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'inherited_resources', :version => '1.0.3'
  config.gem 'haml'
  config.gem 'formtastic'
  config.gem 'devise', :version => '1.0.7'
  
  config.gem 'oauth', :version => '0.4.0'
  config.gem 'oauth-plugin', :version => '0.3.14'
  config.time_zone = 'UTC'

  config.action_mailer.default_url_options = { :host => 'todo_consumer.local' }
  
end