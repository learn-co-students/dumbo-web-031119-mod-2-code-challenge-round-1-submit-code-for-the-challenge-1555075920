class RestaurantsController < ApplicationController

	before_action :get_restaurant, only: [:show]


	def index
		params[:search].nil? ? @restaurants = (Restaurant.all) : (@restaurants = Restaurant.search(strong_search))
	end

	def show
		@pizzas = @restaurant.pizzas
	end




	private

	def get_restaurant
		@restaurant = Restaurant.find(params[:id])
	end

	def strong_search
		params.permit(:search)
	end
end
