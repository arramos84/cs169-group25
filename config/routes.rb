CS169Group31::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  #get "survey/new"
  get "static_pages/index"

  root to: "static_pages#index"
  #  resources
  resources :users
  resources :sessions, only: [:new,:create,:destroy]
  resources :surveys, only: [:new,:create, :destroy]

  # routes for login
  match "login" => "sessions#new", :as => "login"
  match "logout" => "sessions#destroy", :as => "logout", :via => :get
  match "survey" => "survey#new", :as => "survey", :via => :get
  match "survey" => "survey#create", :as => "survey", :via => :post

  match "signup" => "users#new", :as => "signup"
  match "home" => "users#show", :as => "home"
  match "add_code" => "users#code", :as => "code"
  match "follow_code" => "users#follow_code", :as => "follow_code", :via => 'get'
  match "follow_code" => 'users#followsubmit', :as => "follow_code", :via => 'post' #follow button route

  match "mbinfo" => 'static_pages#mbinfo'
  match "wifm" => 'static_pages#wifm'
  match "about" => 'static_pages#about'

  #routes for third party login
  match 'auth/:provider/callback', to: 'users#create_with_third_party_auth'
  
  #routes for resetting password
  match 'reset-password' => 'users#reset_password'

  #devise_scope :admin_user do
   # delete '/admin/logout' => 'active_admin/devise/sessions#destroy'
  #end

  #match '/signup',  to: 'users#new'

  # The priority is based upon order of creation:
  # first created -> highest priority.

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
