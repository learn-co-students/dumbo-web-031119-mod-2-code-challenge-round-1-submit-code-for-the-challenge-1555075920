Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/search/:name', to: 'restaurants#show'
  resources :restaurants, only: [:show]
  get '/pizzas', to: 'pizzas#index'
  resources :pizzas, only: [:show, :new, :create]
end
