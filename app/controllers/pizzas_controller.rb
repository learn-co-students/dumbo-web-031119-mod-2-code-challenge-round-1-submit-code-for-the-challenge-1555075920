class PizzasController < ApplicationController


  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def edit
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.new
    @restaurans = Restaurant.all
  end

  def create
    @pizza = Pizza.new(pizza_params)
      if @pizza.save
        redirect_to pizza_path(@pizza)
      else
        render :new
      end
    end

    def  update
      @pizza = Pizza.find(params[:id])
      if @pizza.update(pizza_params)
        redirect_to to @pizza
      else
        render :edit
    end

    private

    def pizza_params
      params.require(:pizza).permit(:name, :ingredients)
    end

end
