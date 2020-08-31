class AddSizeToUnits < ActiveRecord::Migration[6.0]
  def change
    add_column :units, :square_meters, :float
    add_column :units, :bathrooms, :float
    add_column :units, :bedrooms, :float
  end
end
