Somervillefoodrescue::Application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'pages#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  get 'volunteers' => 'pages#users_index', as: :volunteers
  get 'volunteers/:id' => 'pages#show_user', as: :volunteer

  get 'take_shift/:pickup_id' => 'actions#take_shift', as: :take_shift
  get 'leave_shift/:pickup_id' => 'actions#leave_shift', as: :leave_shift
  get 'make_admin/:user_id' => 'actions#make_admin', as: :make_admin
  get 'demote_admin/:user_id' => 'actions#demote_admin', as: :demote_admin

  mount PostgresqlLoStreamer::Engine => "/user_avatar"
  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :donors
  resources :recipients
  resources :pickups
  resources :pickup_reports, path: :reports

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
