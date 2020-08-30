class ContractorsController < ApplicationController
  def index
    @contractors = current_user.contractors.order("LOWER(first_name)")
  end

  def new
    @contractor =  Contractor.new
  end

  def create
    @contractor =  Contractor.new(params_contractor)
    @contractor.user = current_user

    if @contractor.save
      redirect_to contractors_path
    else
      render :new
    end
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
    params.require(:contractor).permit(:first_name, :last_name, :phone_number, :speciality)
  end
end
