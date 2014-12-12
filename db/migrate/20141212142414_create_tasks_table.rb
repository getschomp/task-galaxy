class CreateTasksTable < ActiveRecord::Migration
  def change
    create_table :tasks do |table|
      table.string :name, null: false
      table.string :description
      table.date :due_date
      table.integer :user_id, null: false
      table.integer :project_id, null: false

      table.timestamps
    end
  end
end

#### Tasks

 # Tasks must have a name.
 # Tasks can optionally have a description and due date as well.
 # Tasks can be assigned to a single user.
 # A task can belong to a single project.
