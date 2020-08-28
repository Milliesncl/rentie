class AddColumnPdfToUnits < ActiveRecord::Migration[6.0]
  def change
    add_column :units, :lease, :binary
  end
end
