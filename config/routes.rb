Rails.application.routes.draw do
  get 'event/new'

  get 'event/show'

  get 'gallery/new'

  get 'gallery/show'

  mount Ckeditor::Engine => '/ckeditor'
  get 'institute/index'

  get 'institute/new'

  get 'institute/edit'

  get 'welcome/index'

  get 'institue/index'

  get 'institue/new'

  get 'institue/edit'

  get 'session/index'

  get 'session/new'

  get 'user/index'

  get 'user/new'

  get 'fot-admin' => 'institute#adminp'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  post '/signup' => 'user#create'
  post '/login' => 'session#login'

  post '/addinstitue' => 'institute#create'

  post '/gallery/:institute_id' => 'gallery#create'
  post '/event/:institute_id' => 'event#create'


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
      resources :institute
      resources :gallery
      resources :event
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
