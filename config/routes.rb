Rails.application.routes.draw do
  resources :pets do
      get :search, on: :collection
  end

  devise_for :users, controllers:{
    :omniauth_callbacks => "users/omniauth_callbacks",
    registrations: 'users/registrations'
  }

  root to: 'pets#index'
  resources :interactions, only: :create
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
