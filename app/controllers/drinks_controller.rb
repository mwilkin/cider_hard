class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to drinks_path
    else
      render :new
    end
  end

private
  def drink_params
    params.require(:drink).permit(:name, :fruit, :origin, :description, :cost)
  end

end
