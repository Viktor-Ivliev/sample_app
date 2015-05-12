class CreateKIndactivities < ActiveRecord::Migration
  def change
    create_table :k_indactivities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
