Rails.application.routes.draw do

  root 'games#new'

  resources :games, only: [:create, :new, :show]

  resources :users, only: [:create, :new, :show]

  resources :sessions, only: [:create, :new, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
