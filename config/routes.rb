Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
  
  root 'pages#home' # Esta parte es obligatoria para que lo redirija bien
  # Ejecutarlo con 'rails server -b $IP -p $PORT' (NO EJECUTARLO CON EL RUN DE CLOUD9!). 
  # La direccion http://0.0.0.0:8080 (Clickando sobre el nos lleva a http://udemy-ruby-chistakus17.c9users.io:8080/)

  # get 'pages/home', to:'pages#home' -- No hace falta si ya esta declarado como root
  # get 'pages/about', to:'pages#about' -- Y hay que quitar este tambien, porque hemos quitado el anterior. En su lugar hay que poner
  get 'about', to:'pages#about'
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new] # Es equivalente a: post 'users', to: 'users#create'
  
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  resources :articles

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
