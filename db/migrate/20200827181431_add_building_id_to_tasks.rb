class AddBuildingIdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :building, index: true
  end
end
