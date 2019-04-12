class RestaurantsController < ApplicationController




  def index
     # @restaurants = Restaurant.all
    if params[:name]
    @restaurants = Restaurant.where('store LIKE ?', "%#{params[:name]}%")
  else
    @restaurants = Restaurant.all
end
  end



  def show
    @restaurant = Restaurant.find(params[:id])
  end














  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end





end
