class AddPictureAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :picture_avatar, :string
  end
end
