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
  resources :products
  resources :home, only: [:index]
  resources :dashboard, only: [:index]
  
  root 'home#index'
end