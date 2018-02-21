Rails.application.routes.draw do
  get 'pages/login'

  get 'menus/index', to: 'menus#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'menus/new', to: 'menus#new'
  get 'menus/show', to: 'menus#show'
  get 'menus/edit', to: 'menus#edit'

  root 'menus#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :orders, only: [ :index, :show ]
      resources :menus, only: [ :index, :show ]
      resources :menu_categories, only: [ :index, :show ]
      resources :menu_subcategories, only: [ :index, :show ]
      resources :users, only: [ :index, :show ]
    end

  end

end
