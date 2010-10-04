ActionController::Routing::Routes.draw do |map|

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

  map.root :controller => 'home', :action => 'index'
end

