Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions => 'users/sessions'   
  } 
  devise_scope :user do
    delete "sign_out", :to => "users/sessions#destroy" 
    delete "destroy", :to => "users/registrations#destroy" 
  end
  root to: 'app#new' 
  resources :app, only: [:new]
  resources :users, only: [:show]
  resources :posts do
    resources :comments, only: [:create, :destroy]
    resources :likes, only: [:create, :destroy]
  end
end