class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.string :address
      t.integer :mortgage
      t.integer :purchase_price
      t.date :purchase_date
      t.integer :taxes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
