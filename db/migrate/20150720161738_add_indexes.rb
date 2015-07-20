class AddIndexes < ActiveRecord::Migration
  def change

    add_index :projects, :cohort_id
    add_index :students, :project_id
  end
end
