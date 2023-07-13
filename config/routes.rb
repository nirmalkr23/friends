Rails.application.routes.draw do
  devise_for :users
  resources :mobiles
  resources :friends
  root 'home#index'
  get 'home/about'
  post 'send_email', to: 'job#send_email' ,as: :send_email


  
end
