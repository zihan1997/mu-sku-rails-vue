Rails.application.routes.draw do
  devise_for :users

  root 'home#index'
  get 'home/index'
  get 'products/search'
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
