Rails.application.routes.draw do
  resources :reports
  #get 'home/index'
  get 'home/about'
  root 'home#index'
end
