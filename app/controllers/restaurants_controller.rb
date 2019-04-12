class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @pizzas = Pizza.all
    @restaurant = Restaurant.find(params[:id])
  end
end
