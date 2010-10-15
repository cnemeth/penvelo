ActionController::Routing::Routes.draw do |map|

  map.resource :user_session
  #map.root :controller => "user_sessions", :action => "new" # optional, this just sets the root route

  map.resource :account, :controller => "users"
  map.resources :users


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  map.root :controller => 'home', :action => 'index'
end

