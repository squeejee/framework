Framework::Application.routes.draw do |map|
  # The priority is based upon order of creation:
  # first created -> highest priority.
  devise_for :users
  resource  :account
  resources :pages
  resources :invites, :referrals
  # APP MARKER - Place app specific routes below this line

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get :short
  #       post :toggle
  #     end
  #
  #     collection do
  #       get :sold
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get :recent, :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  namespace :admin do
    resource :dashboard, :controller => "dashboard"
    resource :site_setting
    resources :invites, :collection => {:manage => :post, :reset => :post}, :member => {:approve => :get}
    resources :emails, :collection => {:manage => :post}
    resources :users, :collection => {:manage => :post}
    resources :profiles, :collection => {:manage => :post}
    resources :jobs, :collection => {:manage => :post, :purge_queue => :get}
    # APP MARKER - Place app specific routes below this line
  end

  match "/admin" => "admin/dashboard#show", :as => "admin"
  # APP MARKER - Place app specific routes below this line

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  root :to => "pages#show"
  match "/:id" => "accounts#show", :as => "profile"  
end
