class CreateCarMakes < ActiveRecord::Migration[5.2]
  def change
    create_table :car_makes do |t|
      t.integer :car_post_id
      t.integer :make_model_id

      t.timestamps
    end
  end
end
