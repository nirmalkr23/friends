Rails.application.routes.draw do
  get 'email/new_eamil'
  get 'email/send_email_to_specific'

  devise_for :users, controllers: { 
    omniauth_callbacks: 'users/omniauth_callbacks' ,
    registrations: 'users/registrations',
    sessions: 'users/sessions'
    }
  resources :mobiles
  resources :friends
   root 'home#index'
  #root to: 'devise/sessions#new'

  

  get 'home/about'
  get 'new_email', to: 'job#new_email', as: :new_email
  post 'send_email', to: 'job#send_email' ,as: :send_email
end
