class AddColumnsStateAmountCheckoutSessionIdToUnits < ActiveRecord::Migration[6.0]
  def change
    rename_column :rent_payments, :receipt_date, :due_date
    add_column :rent_payments, :state, :string, default: 'pending'
    add_monetize :rent_payments, :amount, :currency => { present: false }
    add_column :rent_payments, :checkout_session_id, :string
    add_reference :rent_payments, :unit, foreign_key: true
  end
end
