class CreateRentPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :rent_payments do |t|
      t.date :receipt_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
