Rails.application.routes.draw do
  devise_for :users
  root to: 'app#index' 
  resources :app
  resources :users
  resources :posts do
    resources :comments
    resources :likes
  end
end