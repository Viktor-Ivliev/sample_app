class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :manager, :boolean, default: false
    add_column :users, :director, :boolean, default: false
  end
end
