class AddNameToContractors < ActiveRecord::Migration[6.0]
  def change
    add_column :contractors, :name, :string
  end
end
