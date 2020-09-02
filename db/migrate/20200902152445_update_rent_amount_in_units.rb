class UpdateRentAmountInUnits < ActiveRecord::Migration[6.0]
  def change
    remove_column :units, :rent_amount, :integer
    add_monetize :units, :rent_amount, currency: { present: false }
  end
end
