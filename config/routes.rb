Rails.application.routes.draw do

  devise_for :users
  root 'store#index', as: 'store'

  #sessions -newly created
  get '/signin', to: 'sessions#new'
  post "/sessions/create", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"

  #signup pathway
  get '/signup', to: 'users#new'

  #pre-made resources
  resources :items, only: [:show, :index]
  resources :categories, only: [:show, :index]
  resources :users, only: [:create, :show]
  resources :carts
  resources :line_items, only: [:create]
  resources :orders, only: [:show]

  post 'carts/:id/checkout', to: 'carts#checkout', as: 'checkout'

end
