class AddPictureBannerToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :picture_banner, :string
  end
end
