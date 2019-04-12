class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.search(params[:value])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create

  end

end
