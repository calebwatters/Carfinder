class RenameColumnCarIdToPostId < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :car_id, :car_post_id
  end
end
