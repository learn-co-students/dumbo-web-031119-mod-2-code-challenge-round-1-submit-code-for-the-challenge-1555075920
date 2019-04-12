class PizzasController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    get_by_id
    @ingredients = @pizza.ingredient_arr
  end

  def new
    @pizza = Pizza.new
#    @restaurants = Restaurant.all
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

  private
  def get_by_id
    @pizza = Pizza.find(params[:id])
  end
end
