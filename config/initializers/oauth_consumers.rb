# edit this file to contain credentials for the OAuth services you support.
# each entry needs a corresponding token model.
#
# eg. :twitter => TwitterToken, :hour_feed => HourFeedToken etc.
#
OAUTH_CREDENTIALS={
  :todo => {
    :key=>"wZUopBhiamrur5xadrwe",
    :secret=>"g7IzZaM99V4qiUcXeP3Z3KMg4uox7eFYIo1GwpYB",
    :options=>{
      :site=>"http://todo.local", 
      :request_token_path => "/oauth/request_token",
      :access_token_path => "/oauth/access_token",
      :authorize_path => "/oauth/authorize"
    }
  }
}
#   :google=>{
#     :key=>"",
#     :secret=>"",
#     :scope=>"" # see http://code.google.com/apis/gdata/faq.html#AuthScopes
#   },
#   :agree2=>{
#     :key=>"",
#     :secret=>""
#   },
#   :fireeagle=>{
#     :key=>"",
#     :secret=>""
#   },
#   :hour_feed=>{
#     :key=>"",
#     :secret=>"",
#     :options=>{ # OAuth::Consumer options
#       :site=>"http://hourfeed.com" # Remember to add a site for a generic OAuth site
#     }
#   },
#   :nu_bux=>{
#     :key=>"",
#     :secret=>"",
#     :super_class=>"OpenTransactToken",  # if a OAuth service follows a particular standard 
#                                         # with a token implementation you can set the superclass
#                                         # to use
#     :options=>{ # OAuth::Consumer options
#       :site=>"http://nubux.heroku.com" 
#     }
#   }
# }
# 
OAUTH_CREDENTIALS={
} unless defined? OAUTH_CREDENTIALS

load 'oauth/models/consumers/service_loader.rb'