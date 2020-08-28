class AddTaskToUnit < ActiveRecord::Migration[6.0]
  def change
    add_reference :units, :user, null: true, foreign_key: true
  end
end
