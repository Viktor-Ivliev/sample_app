class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :value
      t.date :data_price
      t.integer :id_service

      t.timestamps null: false
    end
  end
end
