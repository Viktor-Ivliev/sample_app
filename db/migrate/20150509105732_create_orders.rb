class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.datetime :date_order
      t.string :client_id

      t.timestamps null: false
    end
  end
end
