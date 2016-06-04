Rails.application.routes.draw do

  get 'users/show'
  devise_for :users, controllers: {registrations: 'user/registrations'}
  resources :users, only: [:show]
  
  resources :foods, only: [:show, :index]

  resources :home, only: [:index] do
    get :user_preferences, on: :collection
    post :update_user_preferences, on: :collection
  end

  root 'home#index'
  get '*path' => redirect('/foods')
end
