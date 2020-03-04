Rails.application.routes.draw do
  resources :authors, only: [:show, :create, :new, :edit, :update]
  resources :posts, only: [:show, :edit, :update]
end
