class AddFirstlastNameToContractors < ActiveRecord::Migration[6.0]
  def change
    add_column :contractors, :first_name, :string
    add_column :contractors, :last_name, :string
    remove_column :contractors, :name, :string
  end
end
