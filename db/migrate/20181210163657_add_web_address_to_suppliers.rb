class AddWebAddressToSuppliers < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :web_address, :string
  end
end
