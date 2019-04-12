Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  resources :restaurants, only: [:index, :new, :show]
  resources :pizzas, only: [:index, :new, :create, :show]
end
