Rails.application.routes.draw do
  resources :restaurants, only: [:show, :index]
  resources :pizzas, only: [:new, :create, :edit, :update, :show, :index]
end
