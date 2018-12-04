class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :email
      t.integer :rating
      t.string :picture_avatar
      t.string :picture_banner

      t.timestamps
    end
  end
end
