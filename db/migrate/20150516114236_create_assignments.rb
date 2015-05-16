class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :status_of_implementation_id
      t.string :succinctly
      t.text :description
      t.text :report
      t.float :time_word
      t.string :status
      t.float :runtime

      t.timestamps null: false
    end
  end
end
