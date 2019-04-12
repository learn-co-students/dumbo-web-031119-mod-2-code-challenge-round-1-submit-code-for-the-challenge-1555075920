class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizza = Pizza.create(params[:id])
    if @pizza.save
      redirect_to :show
    end
  end

  def create


  end


end

