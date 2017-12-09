Rails.application.routes.draw do

  devise_for :users
  root 'store#index', as: 'store'

  #sessions -newly created
  get '/signin', as: 'sessions#new'
  post "/sessions/create", as: "sessions#create"
  delete "/signout", as: "sessions#destroy"

  #pre-made resources
  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users, only: [:new, :create, :show]
  resources :carts
  resources :line_items, only: [:create]
  resources :orders, only: [:show]

  post 'carts/:id/checkout', to: 'carts#checkout', as: 'checkout'

end
