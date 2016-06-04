Rails.application.routes.draw do
  
  get 'users/show'

  devise_for :users
  resources :users, only: [:show]
  resources :foods, only: [:show, :index]
  get 'welcome/index'

  # root 'food#show'
  root 'welcome#index'
  
end
