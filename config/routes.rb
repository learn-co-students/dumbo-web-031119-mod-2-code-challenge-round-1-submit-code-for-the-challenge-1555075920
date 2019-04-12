Rails.application.routes.draw do
  resources :pizzas
	resources :restaurants,only: %i[index show]
	resources :pizzas, only: %i[index show new edit]

end
