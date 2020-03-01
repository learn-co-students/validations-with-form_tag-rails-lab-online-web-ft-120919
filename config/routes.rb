Rails.application.routes.draw do
  # get '/authors/:id', to: 'authors#show', as: 'author'
  # post '/authors', to: 'authors#create'

  resources :authors, only: [:new, :create, :show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :edit, :update]


end
