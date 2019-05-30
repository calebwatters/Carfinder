class CreateMakeModels < ActiveRecord::Migration[5.2]
  def change
    create_table :make_models do |t|
      t.string :make_model
      t.integer :year
      t.string :color
      t.string :style
      t.integer :mileage

      t.timestamps
    end
  end
end
