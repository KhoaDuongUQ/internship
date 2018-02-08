Rails.application.routes.draw do
  resources :bids, only: %i[destroy]
  resources :products do
    resources :bids, only: %i[create update]
  end
  root 'pages#home'
  devise_for :users
  namespace :users do
    get 'dashboard', to: 'dashboard#index'
    get 'profile', to: 'profile#index'
    get 'nortifications', to: 'nortifications#index'
    get 'products', to: 'products#index'
    get 'bids', to: 'bids#index'
  end
end
