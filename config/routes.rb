Rails.application.routes.draw do
  #"www.monblog.com" => "/"
  #"www.monblog.com/categories" => "/categories"
  #"www.monblog.com/static/index" => "static#index"

  #get '/' => 'static#index'
  root 'static#index'

  #get '/articles' => 'articles#index', as: 'articles'
  #post '/articles' => 'articles#create'

  #get '/articles/new' => 'articles#new', as: 'new_article'

  #get '/articles/:id' => 'articles#show', as: "article"
  #match '/articles/:id' => 'articles#update', via: [:put, :patch]
  #delete '/articles/:id' => 'articles#delete'

  #get '/articles/:id/edit' => 'articles#edit', as: 'edit_article'

  resources :articles
  resources :categories

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
