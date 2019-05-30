class CreateCarPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :car_posts do |t|
      t.string :title
      t.text :content
      t.string :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
