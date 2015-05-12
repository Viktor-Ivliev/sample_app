class ChangesInTheStructureOfOrdersAndServices < ActiveRecord::Migration
  def change
    data = select_all("select * from table_service_orders")
       execute "delete from table_service_orders" if data.present?
       add_column :services, :discount, :integer
       add_column :orders, :info, :string
       remove_column :table_service_orders, :info, :text
       remove_column :table_service_orders, :price_fact, :string
  end
end
