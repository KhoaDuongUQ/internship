Rails.application.routes.draw do
  resources :products do
    resources :bids, only: %i[create edit update destroy]
  end
  root 'pages#home'
  devise_for :users
  get "users/products", to: "users/products#index", as: :user_show_products
end
