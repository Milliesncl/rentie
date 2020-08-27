class UnitsController < ApplicationController
  def show
  end

  def new
    @unit = Unit.new
    @building = Building.find(params[:building_id])
  end

  def create
    @unit = Unit.new(params_unit)
    @building = Building.find(params[:building_id])

    if @unit.save
      redirect_to building_path(@building)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def params_unit
    params.require(:unit).permit(:unit_number, :purchase_price, :payment_method, :renewal_date, :rent_amount, :payment_date)
  end
end
