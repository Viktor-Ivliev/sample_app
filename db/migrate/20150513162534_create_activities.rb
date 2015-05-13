class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :k_indactivities_id
      t.integer :user_id
      t.integer :level

      t.timestamps null: false
    end
  end
end
