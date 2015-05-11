class AddFormaIdToClients < ActiveRecord::Migration
  def change
    add_column :clients, :forma_id, :integer
  end
end
