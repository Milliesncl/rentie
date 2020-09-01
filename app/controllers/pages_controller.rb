class PagesController < ApplicationController
  def home
    if current_user.renter?
      render 'welcome'
    end

    @task = Task.where(building_id: current_user.buildings)
  end
end
