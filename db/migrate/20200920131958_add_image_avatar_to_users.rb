class AddImageAvatarToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:image_avatar,:string
  end
end
