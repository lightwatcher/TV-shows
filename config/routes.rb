Rails.application.routes.draw do
  # Routes for the On resource:
  # CREATE
  get '/new_on/:id' => 'ons#new'
  get '/create_on' => 'ons#create'

  # READ
  get '/ons' => 'ons#index'
  get '/ons/:id' => 'ons#show'

  # UPDATE
  get '/ons/:id/edit' => 'ons#edit'
  get '/ons/:id/update' => 'ons#update'

  # DELETE
  get '/ons/:id/destroy' => 'ons#destroy'
  #------------------------------

  # Routes for the Network resource:
  # CREATE
  get '/new_network' => 'networks#new'
  get '/create_network' => 'networks#create'

  # READ
  get '/networks' => 'networks#index'
  get '/networks/:id' => 'networks#show'

  # UPDATE
  get '/networks/:id/edit' => 'networks#edit'
  get '/networks/:id/update' => 'networks#update'

  # DELETE
  get '/networks/:id/destroy' => 'networks#destroy'
  #------------------------------

  # Routes for the Show resource:
  # CREATE
  get '/new_show' => 'shows#new'
  get '/create_show' => 'shows#create'

  # READ
  get '/shows' => 'shows#index'
  get '/shows/:id' => 'shows#show'

  # UPDATE
  get '/shows/:id/edit' => 'shows#edit'
  get '/shows/:id/update' => 'shows#update'

  # DELETE
  get '/shows/:id/destroy' => 'shows#destroy'
  #------------------------------

  # Routes for the Charecter resource:
  # CREATE
  get '/new_charecter/:id' => 'charecters#new'
  get '/create_charecter' => 'charecters#create'

  # READ
  get '/charecters' => 'charecters#index'
  get '/charecters/:id' => 'charecters#show'

  # UPDATE
  get '/charecters/:id/edit' => 'charecters#edit'
  get '/charecters/:id/update' => 'charecters#update'

  # DELETE
  get '/charecters/:id/destroy' => 'charecters#destroy'
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get '/new_actor' => 'actors#new'
  get '/create_actor' => 'actors#create'

  # READ
  get '/actors' => 'actors#index'
  get '/actors/:id' => 'actors#show'

  # UPDATE
  get '/actors/:id/edit' => 'actors#edit'
  get '/actors/:id/update' => 'actors#update'

  # DELETE
  get '/actors/:id/destroy' => 'actors#destroy'
  #------------------------------

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
