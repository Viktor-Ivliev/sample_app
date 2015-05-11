class AddColumnCategoriIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :categori_id, :integer
    drop_table :blocks
  end
end
