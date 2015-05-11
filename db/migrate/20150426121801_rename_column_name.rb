class RenameColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :neme, :name
  end
end
