class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
    @restaurants = Restaurant.all
  end

  def create
    @pizza = Pizza.create(strong_params)
    if @pizza.valid?
      @pizza.save
      redirect_to restaurants_path
    else
      render :new
    end
  end


  def show
    @pizza = Pizza.find(params[:id])
    @restaurant = @pizza.restaurant
  end



  private


  def strong_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end


end
