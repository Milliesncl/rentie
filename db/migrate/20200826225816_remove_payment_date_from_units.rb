class RemovePaymentDateFromUnits < ActiveRecord::Migration[6.0]
  def change
    remove_column :units, :payment_date, :date
  end
end
