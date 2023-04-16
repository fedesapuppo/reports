Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :reports
  # get 'home/index'
  get 'home/about'
  root 'home#index'
end
