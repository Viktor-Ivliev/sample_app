class CreateGrafs < ActiveRecord::Migration
  def change
    create_table :grafs do |t|
      t.datetime :date_start
      t.datetime :date_end
      t.integer :table_service_order_id

      t.timestamps null: false
    end
  end
end
