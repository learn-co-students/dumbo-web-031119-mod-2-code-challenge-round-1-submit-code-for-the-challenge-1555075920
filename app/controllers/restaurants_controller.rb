class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # @restaurant = Project.search(params[:search])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizza = @restaurant.pizzas
  end

  def new
    Restaurant.new
  end

  def create
    @restaurant = Restaurant.create(rest_params)
  end

end
