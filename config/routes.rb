Rails.application.routes.draw do
  use_doorkeeper
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'user', to: 'users#show'

  resources :users, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create]
  resources :communities

  delete '/logout', to: 'sessions#destroy', as: :logout

  root to: 'pages#index'

end
