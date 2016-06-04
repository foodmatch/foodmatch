Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'user/registrations'}
  resources :foods, only: [:index]
  get 'welcome/index'
  root 'welcome#index'
  get '*path' => redirect('/foods')
end
