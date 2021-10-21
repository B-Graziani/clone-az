Rails.application.routes.draw do
  root to: "girls#index"
  resources :girls, except: :index
end
