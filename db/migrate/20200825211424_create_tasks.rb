class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :status
      t.string :urgency
      t.float :expense
      t.date :start_date
      t.date :end_date
      t.references :contractor, null: true, foreign_key: true

      t.timestamps
    end
  end
end
