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

  def edit
    @drink = Drink.find(params[:id])
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      redirect_to drinks_path
    else
      render :new
    end
  end

  def update
    @drink = Drink.find(params[:id])
    if @drink.update(drink_params)
      redirect_to drinks_path
    else
      render :edit
    end
  end

  def destroy
    @drink = Drink.fin(params[:id])
    @drink.destroy
    redirect_to drinks_path
  end

private
  def drink_params
    params.require(:drink).permit(:name, :fruit, :origin, :description, :cost)
  end

end
