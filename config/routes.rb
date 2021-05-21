Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :users
  resources :dashboard
  resources :home

  root to: "home#index"
end
