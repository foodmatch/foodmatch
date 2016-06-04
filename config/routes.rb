Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'user/registrations'}
  resources :categories, only: [:index]
  get 'welcome/index'
  root 'welcome#index'
  get '*path' => redirect('/')
end
