class AddPaymentDateToUnits < ActiveRecord::Migration[6.0]
  def change
    add_column :units, :payment_date, :integer
  end
end
