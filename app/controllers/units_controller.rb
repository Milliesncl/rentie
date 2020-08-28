class UnitsController < ApplicationController
  def show
    buildings = current_user.buildings
    buildings.each do |building|
      @building = Building.find(params[:building_id])
      @unit = Unit.find(params[:id])
    end
  end

  def lease
    @unit = Unit.find(params[:id])
    send_data @unit.lease, filename: "unit-lease-#{@unit.unit_number}.pdf", type: :pdf, disposition: :inline
  end

  def new
    @unit = Unit.new
    @building = Building.find(params[:building_id])
  end

  def create
    @unit = Unit.new(params_unit)
    @building = Building.find(params[:building_id])
    @unit.building = @building
    @unit.lease = params[:unit][:lease].read

    if @unit.save
      redirect_to buildings_path
    else
      render :new
    end
  end

  def edit
    @building = Building.find(params[:building_id])
    @unit = Unit.find(params[:id])
  end

  def update
    @unit = Unit.find(params[:id])
    @building = Building.find(params[:building_id])
    @unit.building = @building

    if @unit.update(params_unit)
      redirect_to building_unit_path(@building, @unit)
    else
      render :edit
    end
  end

  def destroy
    @unit = Unit.find(params[:id])
    @unit.destroy
    redirect_to root_path
  end

  private
  def params_unit
    params.require(:unit).permit(:unit_number, :purchase_price, :payment_method, :renewal_date, :rent_amount, :payment_date, photos: [])
  end
end
