class PagesController < ApplicationController
  def home
    if current_user.renter?
      render 'welcome'
    else
      # get all tasks from current user's buildings
      @tasks = Task.joins(:unit).joins(:building).where(buildings: { user_id: current_user.id })
      # get all buildings and units belonging to current user
      buildings = Building.where(user: current_user)
      units = Unit.where(building: buildings)

      # HEADER CHART
        # INCOME LINE
          @income_array = []
          units_income = units.sum do |unit|
             unit.rent_amount_cents / 100
          end
          12.times do
            @income_array << units_income
          end

        # LOSSES LINE
          @mortgage_total = buildings.sum(&:mortgage).to_i
          @yearly_mortgage = Array.new(12, @mortgage_total)

          yearly_loss = Hash.new(0)
      
          @tasks.each do |task|
            next if task.start_date.nil?
            yearly_loss[task.start_date.month] += task.expense
          end

          @unit_expenses = units.map do |unit|
            #unit.tasks.sum(&:expense)
          end
          @final_array = []
          for k in 1..12
            if yearly_loss.key?(k)
              @final_array << yearly_loss[k]
            else
              @final_array << 0
            end
          end
          @final_array = @final_array.map { |num| num + @mortgage_total }


        # PROFIT/LOSS
          @yearly = Array.new
          @yearly << @final_array
          @yearly << @income_array


      # PROFITS/LOSS CHART
      @profits_loss = []
      # find sum of the rent_amount from units
      overall_profit = units.sum do |unit|
        unit.rent_amount_cents / 100
      end
      current_month_tasks = @tasks.where("start_date >= ?", Date.today.beginning_of_month)
      expenses_total = current_month_tasks.sum(&:expense).round(2)

      overall_loss = @mortgage_total + expenses_total

      @profits_loss << overall_profit
      @profits_loss << overall_loss

      @roi = overall_profit - overall_loss

    end
  end
end
