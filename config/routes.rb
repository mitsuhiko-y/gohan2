Rails.application.routes.draw do
  devise_for :users
  root to: 'users#index' 
  resources :users, only: [:index, :new, :show, :edit, :update]
  resources :app, only: :index
  resources :posts, only: [:index, :new, :show, :edit, :update]
end