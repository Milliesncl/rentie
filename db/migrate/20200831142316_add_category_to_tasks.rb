class AddCategoryToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :category, :string
  end
end
