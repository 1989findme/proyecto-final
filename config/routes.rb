Rails.application.routes.draw do
  resources :photos
  devise_for :users
  get 'users/search'
  root to: 'users#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
