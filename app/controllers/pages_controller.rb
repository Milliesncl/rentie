class PagesController < ApplicationController
  def home
    if current_user.renter?
      render 'welcome'
    else
      # get all tasks from current user's buildings
      @task = Task.where(building_id: current_user.buildings)

      # get all buildings belonging to current user
      @buildings = Building.where(user: current_user)
      # get all units from @buildings
      @units = Unit.where(building: @buildings)
      # find sum of the rent_amount from units on line 12
      @income_of_buildings = [@units.to_a.reject{ |unit| unit.user_id.nil? }.sum(&:rent_amount)]

    end
  end
end
