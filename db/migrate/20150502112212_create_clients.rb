class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :tel
      t.string :email
      t.string :adress
      t.string :comments

      t.timestamps null: false
    end
  end
end
