class CreateContractors < ActiveRecord::Migration[6.0]
  def change
    create_table :contractors do |t|
      t.string :phone_number
      t.string :speciality
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
