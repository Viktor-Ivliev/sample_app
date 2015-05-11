class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :prices, :id_service, :service_id
  end
end
