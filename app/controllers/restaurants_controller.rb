class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end


  def create
     @restaurant = Restaurant.new(restaurant_params(:name, :address))
    if @restaurant.save 
      redirect_to restaurant_path(@restaurant)
    else 
      render 'new'
    end   
  end  

  def edit 
    @restaurant = Restaurant.find(params[:id]) 
  end   

  def update 
    if @restaurant.update(restaurant_params(:name, :address))
      redirect_to restaurant_path(@restaurant)
    else 
      render 'edit'
    end 
  end   


  def show 
    @restaurant = Restaurant.find(params[:id]) 
  end  
  
  


  private 

   def restaurant_params(*args)
      params.require(:restaurant).permit(*args)
   end  
end
