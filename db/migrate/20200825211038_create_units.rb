class CreateUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :units do |t|
      t.references :building, null: false, foreign_key: true
      t.integer :unit_number
      t.integer :purchase_price
      t.string :payment_method
      t.date :renewal_date
      t.date :payment_date
      t.integer :rent_amount

      t.timestamps
    end
  end
end
