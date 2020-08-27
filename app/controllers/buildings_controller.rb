class BuildingsController < ApplicationController
  def show
    buildings = current_user.buildings
    buildings.each do |building|
      @building = Building.find(params[:id])
      @units = Unit.where(building_id: @building.id)
    end
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(params_building)
    @building.user = current_user

    if @building.save
      redirect_to building_path(@building)
    else
      render :new
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])
    if Building.update(params_building)
      redirect_to building_path(@building)
    else
      render :edit
    end
  end

  def destroy
    @building = Building.find(params[:id])
    @building.destroy
    redirect_to root_path
  end

private

  def params_building
    params.require(:building).permit(:address, :mortgage, :purchase_price, :purchase_date, :taxes, :photo)
  end
end
