MyMvp::Application.routes.draw do



  get "comments/create"

  get "microposts/index"

  get "microposts/show"

  get "microposts/new"

  #resources :microposts, only: [:create, :destroy]
  resources :sessions,   only: [:new, :create, :destroy]
  resources :basketballs
  resources :baseballs
  resources :users
	resources :identities
	resources :microposts

	resources :comments, :belongs_to => :microposts

  get "basketballs/new"
  get "basketballs/index"

  get "basketballs/create"

  get "basketballs/edit"

		
	#match 'hello' => 'sessions#signup'
 	root :to => 'sessions#signup'
	#root :to => 'microposts#index'
	get 'index' => "microposts#index"
	match "/auth/:provider/callback" => "sessions#create"
	match "/auth/failure", to: "sessions#failure"
	match "/signout" => "sessions#destroy", :as => :signout
	match 'user_criteria/:id' => 'users#user_criteria'
	match 'basketballs/:id/show' => 'basketballs#show'
	#match 'microposts/:id/show' => 'microposts#show'

	#match 'hello' => 'microposts#index'
  #match ':user(/:user_criteria(/:id))(.:format)',  :as => 'test'

	#match "/user" => "users#presign"

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

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
