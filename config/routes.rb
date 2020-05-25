Rails.application.routes.draw do
  root 'categories#about'

  devise_for :users
  resources :users, only: [:show, :edit, :update, :index, :destroy]

  resources :posts do
  	resource :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end
  resources :categories
  resources :clubs

  get '/search' => 'search#search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
