class AddFacebookToSuppliers < ActiveRecord::Migration[5.2]
  def change
    add_column :suppliers, :facebook, :string
  end
end
