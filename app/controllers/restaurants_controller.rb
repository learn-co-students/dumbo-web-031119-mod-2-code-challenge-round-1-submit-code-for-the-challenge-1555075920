class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if params[:query]
      @restaurants = Restaurant.where('name LIKE ?', "%#{params[:query]}%")
    else
      @restaurants = Restaurant.all
    end
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
