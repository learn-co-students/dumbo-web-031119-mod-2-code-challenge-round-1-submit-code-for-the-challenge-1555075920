class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all

    if params[:search]
      @restaurants = Restaurant.search(params[:search]).order("name DESC")
    else
      @restaurants = Restaurant.all.order("name DESC")
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @pizzas = @restaurant.pizzas
  end
end
