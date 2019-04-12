class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id]||params[:pizza][:pizza_name])
  end

  def new
    @pizza= Pizza.new
    @restaurants=Restaurant.all
  end

  def create
    @restaurants=Restaurant.all
    @pizza=Pizza.new(params.require(:pizza).permit(:name,:ingredients,:restaurant_id))
    if @pizza.save
      redirect_to @pizza
    else
      render"new"
    end
  end

  def edit
      @pizza = Pizza.find(params[:id])
      @restaurants = Restaurant.all
  end

  def update
    @restaurants=Restaurant.all
    @pizza=Pizza.find(params[:id])
    if @pizza.update(params.require(:pizza).permit(:name,:ingredients,:restaurant_id))
      redirect_to @pizza
    else
      render"edit"
  end
end


end
