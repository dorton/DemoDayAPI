class DropsPublishToStudent < ActiveRecord::Migration
  def change
    remove_column :projects, :dont_publish_student, :boolean
    add_column :students, :dont_publish, :boolean
  end
end
