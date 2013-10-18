Jobpage::Application.routes.draw do

  # Devise Routes
  devise_for :users #, :controllers => { :registrations => "users/registrations" }

  # Dashboard Routes
  get 'dashboard' => 'dashboard#index'
  
  namespace :dashboard do
    resources :jobs
    resources :job_applications
    get 'appearance' => 'appearance#index'
  end

  # Front Routes
  resources :jobs do
    resources :job_applications
  end
  match '', to: 'front#index', constraints: {subdomain: /.+/}, via: [:get] #Maps Subdomain User setting to subdomain page
  get 'job' => 'front#show'

  # Static_Pages Routes
  get 'about' => 'static_pages#about'
  get 'features' => 'static_pages#features'
  get 'pricing' => 'static_pages#pricing'

  # Root Route
  root 'static_pages#index'
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
