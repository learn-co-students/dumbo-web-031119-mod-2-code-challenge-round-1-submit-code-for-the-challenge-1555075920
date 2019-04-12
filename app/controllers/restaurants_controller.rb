class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    
    if params[:restaurant]
      @restaurant = Roupon.where('restaurant LIKE ?', "%#{params[:restaurant]}%")
    else
      @restaurant = Restaurant.all
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
