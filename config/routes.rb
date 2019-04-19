Rails.application.routes.draw do
  devise_for :users,:controllers => { :registrations => "users/registrations" }
  resources :categories
  resources :sub_categories
  resources :product_colors
  resources :product_sizes
  resources :coupons
  resources :users
  resources :carts
  resources :advertisements
  resources :addresses
  resources :orders
  resources :product_size_colors, only: [:update]
  resources :products, except: [:show]
  resources :home
  resources :dashboard, only: [:index]
  

  get 'products/listofproduct', to: 'products#listofproduct'
  get 'addresses/:id/directselect', to: 'addresses#directselect', as: 'selectaddress'
  root 'home#index'
end