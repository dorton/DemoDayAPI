class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :app_name
      t.string :app_url
      t.string :rationale
      t.string :tech_used
      t.timestamps null: false
    end
  end
end
