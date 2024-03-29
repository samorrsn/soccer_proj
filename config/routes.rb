STM::Application.routes.draw do

  get "team_members/new"
  get "team_members/profile"
  get "team_members/edit"
  get "team_players/new"
  get "team_players/profile"
  get "team_players/edit"
  # get "calendar/index"
  get "statistics/index"
  get '/teams/:id/profile', to: 'teams#profile'
  get '/teams/:id/schedule', to: 'teams#schedule'
  get '/teams/:id/players', to: 'teams#players'
  get '/teams/:id/positions', to: 'teams#profile'
  get '/teams/:id/player_availabilites', to: 'teams#player_availabilities'
  resources :users
  resources :team_members
  resources :teams
  root "static_pages#home"

  match '/calendar', to: 'calendar#index',  via: 'get'

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
