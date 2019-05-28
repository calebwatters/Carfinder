class ChangeColumnNameAddressToStreetAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :address, :street_address
  end
end
