ActionController::Routing::Routes.draw do |map|

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.resource :controller => "user_sessions", :action => "new"

  map.resources :roles

  map.namespace :common do |common|
    common.resources :clubs
  end


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  map.root :controller => "home", :action => "index"
end

