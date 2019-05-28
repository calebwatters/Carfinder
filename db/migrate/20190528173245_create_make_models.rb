class CreateMakeModels < ActiveRecord::Migration[5.2]
  def change
    create_table :make_models do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.string :type
      t.integer :mileage

      t.timestamps
    end
  end
end
