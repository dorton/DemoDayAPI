class AddsPublishToProject < ActiveRecord::Migration
  def change
    add_column :projects, :dont_publish, :boolean
  end
end
