class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    get_by_id
    @pizzas = @restaurant.pizzas
  end

  private
  def get_by_id
    @restaurant = Restaurant.find(params[:id])
  end
end
