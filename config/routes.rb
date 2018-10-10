Rails.application.routes.draw do
  resources :pets
  devise_for :users, controllers:{
    :omniauth_callbacks => "users/omniauth_callbacks",
    registrations: 'users/registrations'
  }
  get 'users/search'
  root to: 'pets#index'
  resources :interactions, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
