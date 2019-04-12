Rails.application.routes.draw do
  resources :pizzas
  resources :restaurants

  post 'search' => 'restaurants#search'

end
