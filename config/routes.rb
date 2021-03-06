Do::Application.routes.draw do
  resources :homeworks
  resources :messages


  resources :assignments do
    get :assign, :on => :member 
    get :puto, :on => :member
    get :already, :on => :member
    get :putout, :on => :member
  end
  resources :depots do
    get :part_list, :on => :member
  end
  resources :categories
  # get "sessions/new"

  # get "sessions/create"

  # get "sessions/destroy"
  controller :sessions do
    get 'login' => :new
    root :to => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get '/register' => "users#new"
  get 'registered' => "users#registered"
  match 'user_info' => "users#info"
  get 'user_act' => "users#user_act"
  resources :users
  match 'circles/search' => 'circles#search'
  match 'depots/search' => 'depots#search'
  match 'circles_join_me' => 'circles#join_me'
  match 'add_friend' => 'circles#add_friend'
  resources :circles do
    get :part_list, :on => :member
  end

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
  #     enhas_many :inbox, :class_name => 'Message', :foreign_keyd
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
  # root :to => 'login' 

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
