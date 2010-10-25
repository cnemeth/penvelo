ActionController::Routing::Routes.draw do |map|

  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.resource :account, :controller => "users"
  map.resources :users
  map.resource :user_session
  map.resource :controller => "user_sessions", :action => "new"

  map.resources :contacts
  map.resources :roles

  map.namespace :common do |common|
    common.resources  :clubs
    common.resources  :sponsors
    common.resources  :newses
    common.resources  :races
    common.resources  :rides
    common.resources  :members
    common.resources  :galleries
    common.resources  :legals
    common.resources  :privacies
  end

  map.namespace :admin do |admin|
    admin.resources :clubs
    admin.resources :users
    admin.resources :contacts
    admin.resources :contents

    admin.resources :roles
    admin.resources :positions
    admin.resources :im_types
    admin.resources :content_types
    admin.resources :sponsor_types
    admin.resources :ride_types
    admin.resources :race_disciplines
    admin.resources :race_categories
    admin.resources :feedback_types
  end


  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  map.admin_home "admin/index", :controller => "admin/home", :action => "index"
  map.root :controller => "home", :action => "index"
end

