Rails.application.routes.draw do
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
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
