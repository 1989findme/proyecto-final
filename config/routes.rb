Rails.application.routes.draw do
  resources :pets
  devise_for :users, controllers:{
    registrations: 'users/registrations'
  }
  get 'users/search'
  root to: 'pets#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
