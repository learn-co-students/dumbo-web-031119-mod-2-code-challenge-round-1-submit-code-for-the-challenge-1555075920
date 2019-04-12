class RestaurantsController < ApplicationController
 before_action :find_res_id only, [:show, :new]

  def index
    @restaurants = Restaurant.all
  end

  def show

  end 

  def new
  	@restaurant = Restaurant.new
  end 

 

  private

  def find_res_id
  	@restaurant = Restaurant.find(params[:id])
  end 

  def find_red_params
  	params.require(:restaurants).permit(:name, :address)
  end

end
