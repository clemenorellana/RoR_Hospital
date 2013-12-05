Proyecto::Application.routes.draw do
  

  get "sessions/new"

 match "/reports" => "homehospital#reports", as: :reportes
 match "/ranking" => "homehospital#ranking", as: :ranking
 match "/account" => "users#account", as: :account
  match "/login" => "sessions#new", as: :home_login, via: :GET
match "/login" => "sessions#create", via: :post
match "/logout" => "sessions#destroy", as: :logout, via: :GET
  resources :appointments
  resources :patients do
    member do
      get "appointments"
    end
   end 

  resources :doctors do
    member do
      get "appointments"
    end
    resources :phones, shallow: :true
  end
  match "/doctors/:doctor_id/appointments/:appointment_id" => "doctors#citas", as: :atendercita, via: :get
  resources :users
  match "/maintenances" => "homehospital#maintenances", as: :mantenimiento
   match "/homepage"=> "homehospital#index", as: :home_page

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
  #root :to => 'homehospital#index'
root :to => "sessions#new"
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
