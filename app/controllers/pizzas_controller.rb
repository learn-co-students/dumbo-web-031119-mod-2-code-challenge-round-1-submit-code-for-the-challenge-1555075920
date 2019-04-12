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
    @pizza = Pizza.new(pizza_params(:name, :ingredients, :restaurant_id))
    @pizza.save
    if @pizza.valid?
      redirect_to pizza_path(@pizza)
    else
      render :new
    end
  end

  private

  def pizza_params(*args)
    params.require(:pizza).permit(*args)
  end


end
