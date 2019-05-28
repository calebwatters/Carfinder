class RemoveColumnModelFromMakeModels < ActiveRecord::Migration[5.2]
  def change
    remove_column :make_models, :model
    rename_column :make_models, :make, :make_model
  end
end
