class RemovalOfDiscountsAndPricesInOrderToAdd < ActiveRecord::Migration
  def change
  	remove_column :services, :discount, :integer
    add_column :orders, :price, :float
    change_column :prices, :value, :float
  end
end
