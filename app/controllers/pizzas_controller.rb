class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def def(new)
    @pizza = pizza.new
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      redirect_to @pizza
    else
      render "new"
    end
  end

  def show
    @pizza = Pizza.find(params[:id])
    @res = @pizza.restaurant
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end
end
