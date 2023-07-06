Rails.application.routes.draw do
  resources :mobiles
  resources :friends
  root 'home#index'
  get 'home/about'
  
end
