Rails.application.routes.draw do
  devise_for :users,:controllers => { :registrations => "users/registrations" }
  resources :categories
  resources :sub_categories
  resources :product_colors
  resources :product_sizes
  resources :coupons
  resources :dashboard, only: [:index]
  
  root 'categories#index'
end