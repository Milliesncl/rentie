class AddDefaultValueToTask < ActiveRecord::Migration[6.0]
  def change
    change_column_default :tasks, :status, nil
  end
end
