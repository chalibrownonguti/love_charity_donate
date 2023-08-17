Rails.application.routes.draw do
  # Devise routes for omniauth callbacks
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # Regular resources routes for users
  resources :users

  # Define your other application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
