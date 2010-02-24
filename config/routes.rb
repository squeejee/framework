ActionController::Routing::Routes.draw do |map|
  map.resource  :account
  map.resources :pages
  map.resources :invites, :referrals
  map.devise_for :users
  # APP MARKER - Place app specific routes below this line
  
  map.namespace :admin do |admin|
    admin.resource :dashboard, :controller => "dashboard"
    admin.resource :site_setting
    admin.resources :invites, :collection => {:manage => :post, :reset => :post}, :member => {:approve => :get}
    admin.resources :emails, :collection => {:manage => :post}
    admin.resources :users, :collection => {:manage => :post}
    admin.resources :profiles, :collection => {:manage => :post}
    admin.resources :jobs, :collection => {:manage => :post, :purge_queue => :get}
    # APP MARKER - Place app specific routes below this line
  end
  
  map.admin "/admin", :controller => "admin/dashboard", :action => "show"
  # APP MARKER - Place app specific routes below this line
  
  
  map.root :page
  map.profile "/:id", :controller => "accounts", :action => "show"
end
