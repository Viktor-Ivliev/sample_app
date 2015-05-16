class CreateStatusOfImplementations < ActiveRecord::Migration
  def change
    create_table :status_of_implementations do |t|
      t.integer :order_id
      t.datetime :date_status
      t.boolean :status

      t.timestamps null: false
    end
  end
end
