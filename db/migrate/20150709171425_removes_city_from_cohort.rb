class RemovesCityFromCohort < ActiveRecord::Migration
  def change
    remove_column :students, :cohort_id
    add_column :projects, :cohort_id, :integer
  end
end
