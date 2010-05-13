# edit this file to contain credentials for the OAuth services you support.
# each entry needs a corresponding token model.
#
# eg. :twitter => TwitterToken, :hour_feed => HourFeedToken etc.
#
OAUTH_CREDENTIALS={
  :todo => {
    :options=>{
      :site=> "http://todo-provider.heroku.com", 
      :request_token_path => "/oauth/request_token",
      :access_token_path => "/oauth/access_token",
      :authorize_path => "/oauth/authorize"
    }
  },
  :strings => {
    :options=>{
      :site=> "http://strings.com", 
      :request_token_path => "/oauth/request_token",
      :access_token_path => "/oauth/access_token",
      :authorize_path => "/oauth/authorize"
    }
  }
}

OAUTH_CREDENTIALS.keys.each do |service|
  credentials_yml = File.join(Rails.root, "config/credentials.#{service}.yml")

  credentials = if File.exists?(credentials_yml)
    config = YAML.load_file(credentials_yml).with_indifferent_access
    config[Rails.env] || config[service] || config[:all] || config[:global] || config
  else
    {
      :key    => ENV["#{service.upcase}_KEY"],
      :secret => ENV["#{service.upcase}_SECRET"],
      :options => {
        :site => ENV["#{service.upcase}_SITE"] || OAUTH_CREDENTIALS[service][:options][:site]
      }
    }.with_indifferent_access
  end
  OAUTH_CREDENTIALS[service][:key]    = credentials[:key]
  OAUTH_CREDENTIALS[service][:secret] = credentials[:secret]
end
load 'oauth/models/consumers/service_loader.rb'
