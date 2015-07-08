class AddForeignKey < ActiveRecord::Migration
  def change
    add_column :students, :project_id, :integer
    add_column :students, :cohort_id, :integer

  end
end
