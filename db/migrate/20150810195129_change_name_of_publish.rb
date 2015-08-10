class ChangeNameOfPublish < ActiveRecord::Migration
  def change
    rename_column :students, :dont_publish, :dont_publish_student
    rename_column :projects, :dont_publish, :dont_publish_project
  end
end
