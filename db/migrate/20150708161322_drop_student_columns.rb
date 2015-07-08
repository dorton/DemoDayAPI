class DropStudentColumns < ActiveRecord::Migration
  def change
    remove_column :students, :app_name
    remove_column :students, :app_url
    remove_column :students, :rationale
    remove_column :students, :tech_used
  end
end
