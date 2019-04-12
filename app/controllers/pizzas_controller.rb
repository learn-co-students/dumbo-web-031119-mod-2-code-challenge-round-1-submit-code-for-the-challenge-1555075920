class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new 
    @pizza = Pizza.new
  end

  def create 
    @pizza = Pizza.new(params.require(:pizza).permit(:name, :ingredients, :restaurant_id))
    if @pizza.valid?
      @pizza.save
      redirect_to @pizza
    else
      render :new
    end
  end
  
end
