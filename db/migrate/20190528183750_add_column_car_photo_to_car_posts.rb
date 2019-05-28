class AddColumnCarPhotoToCarPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :car_posts, :photo, :string
  end
end
