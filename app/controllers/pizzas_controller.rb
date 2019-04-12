class PizzasController < ApplicationController

	before_action :get_pizza, only: [:show, :edit, :update]

	def index
		@pizzas = Pizza.all
	end

	def show
	end

	def new
		@pizza = Pizza.new
		@restaurants = Restaurant.all
	end

	def create
		@pizza = Pizza.new(strong_params(:name, :ingredients, :restaurant_id))
		@pizza.save ? (redirect_to pizza_path(@pizza)) : (render :new)
	end




	private

	def get_pizza
		@pizza = Pizza.find(params[:id])
	end

	def strong_params (*args)
		params.require(:pizza).permit(*args)
	end
end
