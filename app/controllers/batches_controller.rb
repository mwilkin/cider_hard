class BatchesController < ApplicationController

  def index
    @batches = Batch.all
  end

  def show
    @drink = Drink.find(params[:drink_id])
    @batch = Batch.find(params[:id])
  end

  def new
    @drink = Drink.find(params[:drink_id])
    @batch = @drink.batches.new
  end

  def create
    @drink = Drink.find(params[:drink_id])
    @batch = @drink.batches.new(batch_params)
    if @batch.save
      redirect_to drink_path(@batch.drink)
    else
      render :new
    end

    def edit
      @drink = Drink.find(params[:drink_id])
      @batch = Batch.find(params[:id])
    end

    def update
      @drink = Drink.find(params[:drink_id])
      @batch = Batch.find(params[:id])
      if @batch.update(batch_params)
        redirect_to drink_path(@batch.drink)
      else
        render :edit
      end
    end

    def destroy
      @batch = Batch.find(params[:id])
      @batch.destroy
      redirect_to drink_path(@batch.drink)
    end

  end

private
  def batch_params
    params.require(:batch).permit(:batch_name, :fruit_weight, :fruit_type, :barrel_type, :temperature, :alcohol_content, :pH, :fruit_cost)
  end

end
