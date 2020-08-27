class AddRenterBooleanToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :renter, :boolean, :default => false
  end
end
