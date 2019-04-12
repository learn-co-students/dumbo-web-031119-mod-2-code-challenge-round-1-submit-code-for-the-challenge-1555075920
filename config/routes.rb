Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
  resources :restaurants, only: [:index, :new, :create, :show, :edit, :update, :destroy]
  resources :pizzas, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
