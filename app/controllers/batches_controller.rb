class BatchesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def show
    @drink = Drink.find(params[:drink_id])
    @batch = Batch.find(params[:id])
  end

  def new
    @drink = Drink.find(params[:drink_id])
    @batch = @drink.batches.new
    respond_to do |format|
      format.html { render :new }
      format.js
    end
  end

  def create
    @drink = Drink.find(params[:drink_id])
    @batch = @drink.batches.new(batch_params)
    if @batch.save
      flash[:notice] = "Batch successfully created!"
      redirect_to drink_path(@batch.drink)
    else
      render :new
    end

    def edit
      @drink = Drink.find(params[:drink_id])
      @batch = Batch.find(params[:id])
      respond_to do |format|
        format.html
        format.js
      end
    end

    def update
      @drink = Drink.find(params[:drink_id])
      @batch = Batch.find(params[:id])
      if @batch.update(batch_params)
        flash[:notice] = "Batch successfully updated!"
        redirect_to drink_path(@batch.drink)
      else
        render :edit
      end
    end

    def destroy
      @batch = Batch.find(params[:id])
      @batch.destroy
      flash[:notice] = "Batch successfully deleted!"
      redirect_to drink_path(@batch.drink)
    end

  end

private
  def batch_params
    params.require(:batch).permit(:batch_name, :fruit_weight, :fruit_type, :barrel_type, :temperature, :alcohol_content, :pH, :fruit_cost)
  end

end
