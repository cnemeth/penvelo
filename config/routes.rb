ActionController::Routing::Routes.draw do |map|

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.resource :controller => "user_sessions", :action => "new"

  map.resources :roles

  map.namespace :common do |common|
    common.resources  :clubs
    common.resources  :sponsors
    common.resource   :news
    common.resources  :races
    common.resources  :rides
    common.resources  :members
    common.resources  :galleries
    common.resources  :legals
    common.resources  :privacies
  end


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  map.root :controller => "home", :action => "index"
end

