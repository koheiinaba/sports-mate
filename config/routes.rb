Rails.application.routes.draw do
  root 'clubs#index'

  devise_for :users
  resources :users, only: [:show, :edit, :update, :index]

  resources :comments
  resources :favorites
  resources :posts
  resources :categories
  resources :clubs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
