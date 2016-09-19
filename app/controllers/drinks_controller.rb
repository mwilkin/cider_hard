class DrinksController < ApplicationController
  def index
    @drinks = Drink.all
  end

end
