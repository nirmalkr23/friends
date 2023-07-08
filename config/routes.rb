Rails.application.routes.draw do
  devise_for :users
  resources :mobiles
  resources :friends
  root 'home#index'
  get 'home/about'
  
end
