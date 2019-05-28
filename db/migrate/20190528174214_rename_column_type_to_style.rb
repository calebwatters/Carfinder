class RenameColumnTypeToStyle < ActiveRecord::Migration[5.2]
  def change
    rename_column :make_models, :type, :style
  end
end
