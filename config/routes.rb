Rails.application.routes.draw do
  resources :products
  get 'pages/home'
  root 'pages#home'
  devise_for :users
  get "users/products", to: "users/products#index", as: :user_show_products
end
