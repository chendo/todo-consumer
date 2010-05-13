ActionController::Routing::Routes.draw do |map|
  map.devise_for :users

  map.resources :oauth_consumers,:member=>{:callback=>:get}
  map.root :controller => 'dashboard'
end
