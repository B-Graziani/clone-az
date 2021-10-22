Rails.application.routes.draw do
  devise_for :users
  root to: "girls#index"
  resources :girls
  resources :users, only: [:show]
end
