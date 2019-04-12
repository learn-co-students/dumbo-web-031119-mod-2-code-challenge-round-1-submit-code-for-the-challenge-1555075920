class PizzasController < ApplicationController
  before_action :find_pizza_id, only: [:show, :new, :edit]

  def index
    @pizzas = Pizza.all
  end

  def show

  end

  def new
  	@pizza = Pizza.new
  end 

  def create 
  	Pizza.create(pizza_params)
  	redirect_to pizza_path
  end 

  def edit 

  end 

   def update
  	Pizza.update(pizza_params)
  	redirect_to pizza_path
 end 


  private 

  def find_pizza_id
  	@pizza = Pizza.find(params[:id])
  end 

  def pizza_params
  	params.require(:pizzas).permit(:name, :ingredients)
  end 
end
