Rails.application.routes.draw do
  get 'likes/index'

  get 'comments/index'

  get 'like/index'

  root to: 'posts#index' 
end
