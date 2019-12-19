Rails.application.routes.draw do
  resources :bloggers
  resources :destinations
  resources :posts
  post '/posts/:id/like', to: 'posts#likes', as: 'like'


end
