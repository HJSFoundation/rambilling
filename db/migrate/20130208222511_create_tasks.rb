class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :project_id
      t.float :time

      t.timestamps
    end
  end
end
