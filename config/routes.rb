Rails.application.routes.draw do
  resources :destinations, only: :show
  resources :posts, only: [:show, :new, :create, :edit, :update]
  resources :bloggers, only: [:show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
