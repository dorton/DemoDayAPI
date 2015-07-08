class AddGroupToStudents < ActiveRecord::Migration
  def change
    add_column :students, :group_project, :boolean
    add_index :students, :group_project
  end
end
