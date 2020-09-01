class TasksController < ApplicationController
  def index
    @tasks = Task.joins(:building).where(buildings: { user_id: current_user.id })
  end

  def new
    @task = Task.new

    contractors = Contractor.where(user: current_user)
    @contractors = contractors.map do |contractor|
      [contractor.first_name, contractor.id]
    end

    buildings = Building.where(user: current_user)
    @buildings = buildings.map do |building|
      [building.address, building.id]
    end

    units = Unit.joins(:building).where(buildings: { user: current_user })
    @units = units.map do |unit|
      [unit.unit_number, unit.id]
    end
  end

  def create
    @task = Task.new(params_task)

    if current_user.renter == true
      unit = Unit.find_by(user: current_user)
      building = unit.building

      @task.unit = unit
      @task.building = building
    end

    if @task.save!
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    contractors = Contractor.where(user: current_user)
    @contractors = contractors.map do |contractor|
      [contractor.first_name, contractor.id]
    end

    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params_task)
    @contractors = Contractor.where(user: current_user)

    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to tasks_path
  end

  def update_status
    @task = Task.find(params[:id])
    @task.update_attribute(:status, true)

    redirect_to tasks_path
  end

  private

  def params_task
    params.require(:task).permit(:title, :description, :status, :urgency, :category, :expense, :start_date, :end_date, :contractor_id, :building_id, :unit_id, photos: [], bill_upload: [])
  end
end
