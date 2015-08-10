class AddsPublishToStudent < ActiveRecord::Migration
  def change
    add_column :projects, :dont_publish_student, :boolean
  end
end
