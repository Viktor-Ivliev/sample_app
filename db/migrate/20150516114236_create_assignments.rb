class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :Status_of_implementation_id
      t.text :assignment_comment
      t.integer :time_word

      t.timestamps null: false
    end
  end
end
