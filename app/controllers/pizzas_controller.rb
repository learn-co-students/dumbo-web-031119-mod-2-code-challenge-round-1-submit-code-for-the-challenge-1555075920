class PizzasController < ApplicationController
  
  def index
    @pizzas = Pizza.all
  end

  def new 
    @pizza = Pizza.new
  end   

  def create 
     @pizza = Pizza.new(pizza_params(:name, :ingredients, :restaurant_id))
      if @pizza.save 
        redirect_to pizza_path(@pizza)
      else 
        @restaurant = Restaurant.all
        render 'new'
    end  
  end   

  def show 
    @pizza = Pizza.find(params[:id])
  end   

  private 

  def pizza_params(*args)
    params.require(:pizza).permit(*args)
  end  

  
end
