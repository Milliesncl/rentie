class AddUnitsToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :unit, null: true, index: true
  end
end
