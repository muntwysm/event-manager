EventManager::Application.routes.draw do
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action
  match 'about/' => 'pages#about'
  match 'help/' => 'pages#help'
  match 'home/' => 'pages#home'
  match 'admin/' => 'pages#admin'
  
  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)
  match 'events/:id/new_contribution/:req_id' => 'contributions#new', :as => :add_contribution
  match ':search/contributions' => 'contributions#index', :as => :individual_contributions
  match ':id/contributions/:search' => 'events#show', :as => :individual_event_contributions
  match 'contributions/:id/not_needed' => 'contributions#not_needed', :as => :not_needed
  match 'contributions/:id/make_needed' => 'contributions#make_needed', :as => :make_needed
  match 'events/:id/duplicate' => 'events#duplicate', :as => :duplicate_event
  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :contributions
  resources :requirements
  resources :locations
  resources :events
  resources :categories
  resources :items  
  resources :users
  resources :user_sessions

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
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
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'pages#home'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
