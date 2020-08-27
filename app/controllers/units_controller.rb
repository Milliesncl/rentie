class UnitsController < ApplicationController
  def show
    @unit = Unit.find(params[:id])
    @building = Building.find(params[:building_id])
  end

  def download
    @unit = Unit.find(params[:unit_id])
    @building = Building.find(params[:building_id])
    send_file @unit.lease.key, type: "application/pdf", x_sendfile: true
  end

  def new
    @unit = Unit.new
    @building = Building.find(params[:building_id])
  end

  def create
    @unit = Unit.new(params_unit)
    @building = Building.find(params[:building_id])
    @unit.building = @building

    if @unit.save
      redirect_to building_path(@building)
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
    params.require(:unit).permit(:unit_number, :purchase_price, :payment_method, :renewal_date, :rent_amount, :payment_date, :lease, photos: [])
  end
end
