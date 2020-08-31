class AddEmailToContractors < ActiveRecord::Migration[6.0]
  def change
    add_column :contractors, :email, :string
  end
end
