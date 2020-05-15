Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :sessions => 'users/sessions'   
  } 
  devise_scope :user do
    get "sign_out", :to => "users/sessions#destroy" 
  end
  root to: 'app#new' 
  resources :app
  resources :users
  resources :posts do
    resources :comments
    resources :likes
  end
end