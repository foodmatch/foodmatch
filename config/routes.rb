Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'user/registrations'}
  
  resources :foods, only: [:index]

  resources :home, only: [:index] do
    get :user_preferences, on: :collection
    post :update_user_preferences, on: :collection
  end

  root 'home#index'
  get '*path' => redirect('/foods')
end
