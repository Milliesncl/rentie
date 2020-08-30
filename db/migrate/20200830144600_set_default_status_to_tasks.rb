class SetDefaultStatusToTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :status, :boolean, default: false
  end
end
