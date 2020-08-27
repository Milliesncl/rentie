class ContractorsController < ApplicationController
  def index
    @contractors = Contractor.all
  end

  def new
    @contractor =  Contractor.new
  end

  def create
    @contractor =  Contractor.new(params_contractor)
  end

  def edit
    @contractor = Contractor.find(params[:id])
  end

  def update
    @contractor = Contractor.find(params[:id])
    @contractor = Contractor.update

    redirect_to contractors_path
  end

  def destroy
    @contractor = Contractor.find(params[:id])
    @contractor = Contractor.destroy

    redirect_to contractors_path
  end

  private

  def params_contractor
    params.require(:contractor).permit(:name, :phone_number, :specialty)
  end
end
