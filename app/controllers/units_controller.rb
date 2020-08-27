class UnitsController < ApplicationController
  def show
    @unit = Unit.find(params[:id])
    @building = Building.find(params[:building_id])
  end

  def new
    @unit = Unit.new
    @building = Building.find(params[:building_id])
  end

  def create
    @unit = Unit.new(params_unit)
    @building = Building.find(params[:building_id])

    if @unit.save
      redirect_to building_unit_path(@building)
    else
      render :new
    end
  end

  def edit
    @unit = Unit.find(params[:id])
  end

  def update
    @unit = Unit.find(params[:id])
    if Unit.update(params_unit)
      redirect_to building_unit_path([@building, @unit])
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def params_unit
    params.require(:unit).permit(:unit_number, :purchase_price, :payment_method, :renewal_date, :rent_amount, :payment_date)
  end
end
