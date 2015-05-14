class RenameTableServiceOrderIdInOrderIdToGrafs < ActiveRecord::Migration
  def change
  	rename_column :grafs, :table_service_order_id, :order_id
  end
end
