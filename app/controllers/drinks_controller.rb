class DrinksController < ApplicationController
  
  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
    @drink = Drink.new
    respond_to do |format|
      format.html { render :new }
      format.js
    end
  end

  def edit
    @drink = Drink.find(params[:id])
    respond_to do |format|
      format.html { render edit }
      format.js
    end
  end

  def create
    @drink = Drink.new(drink_params)
    if @drink.save
      flash[:notice] = "Cider successfully created!"
      redirect_to drinks_path
    else
      render :new
    end
  end

  def update
    @drink = Drink.find(params[:id])
    if @drink.update(drink_params)
      flash[:notice] = "Cider successfully updated!"
      redirect_to drinks_path
    else
      render :edit
    end
  end

  def destroy
    @drink = Drink.find(params[:id])
    @drink.destroy
    flash[:notice] = "Cider successfully deleted!"
    redirect_to drinks_path
  end

private
  def drink_params
    params.require(:drink).permit(:name, :fruit, :origin, :description, :cost)
  end

end
