class PizzasController < ApplicationController
# access and call my find_pizza method with before_action
before_action :find_pizza, only: [:show, :edit]

  def index
    @pizzas = Pizza.all
  end

  def show
  end

  def new
    @pizza = Pizza.new
  end

  def create
    @pizza = Pizza.create(pizza_params)
    if @pizza.valid?
      redirect_to pizza_path(@pizza)
    else
      render :new
    end
  end



  private
  # secure params
  def pizza_params
    params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end

  def find_pizza
    @pizza = Pizza.find(params[:id])
  end


end
