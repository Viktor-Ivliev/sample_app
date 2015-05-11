class CreateTableServiceOrders < ActiveRecord::Migration
  def change
    create_table :table_service_orders do |t|
      t.string :order_id
      t.string :service_id
      t.string :price_fact
      t.text :info

      t.timestamps null: false
    end
  end
end
