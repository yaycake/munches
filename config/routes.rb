Rails.application.routes.draw do
  get 'menu_categories/index'
  get 'menu_categories/show'
  get 'menu_categories/edit'
  patch 'menu_categories/update'
  get 'menu_categories/delete'



resources :menu_items
  # get 'menu_items/index'
  # get 'menu_items/show'
  # get 'menu_items/edit'
  # get 'menu_items/update'
  # get 'menu_items/delete'

  devise_for :users

  root 'orders#index'

# - - - - - - - - USERS has_many Addresses/Phone Numbers/Orders

  # resources :users, only: [:show, :create, :update, :edit] do
  #   resources :addresses
  #   resources :phone_numbers
  #   resources :orders, only: [:index, :show, :create, :delete]
  # end

  get 'orders/index', to: "orders#index"
  get 'orders/show', to: "orders#show"
  post 'orders/create', to: "orders#create"
  get 'orders/edit', to: "orders#edit"
  get 'orders/delete', to: "orders#delete"



  # patch 'menus/update', to: "menus#update"

resources :menus do
  resources :menu_items
end

  # get 'menus/index' => 'menus'
  # get 'menus/new', to: 'menus#new'
  # post 'menus/create', to:'menus#create'
  # get 'menus/:id', to: 'menus#show'
  # get 'menus/:id/edit', to: 'menus#edit'


# - - - - - - - - - - - - - PAGES

  get 'pages/login'
  get 'pages/sales', to: "pages#sales"
  get 'pages/contact', to: "pages#contact"

# - - - - - - - - - - - - - API ROUTES


 namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :orders, only: [ :index, :show ]
      resources :menus, only: [ :index, :show ]
      resources :menu_categories, only: [ :index, :show ]
      resources :menu_subcategories, only: [ :index, :show ]
      resources :menu_items, only: [:index, :show]
      resources :users, only: [ :index, :show ]
      post 'request', to: "signatures#receive_params"
    end
  end

end


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
