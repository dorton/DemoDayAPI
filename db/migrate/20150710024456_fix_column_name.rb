class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :cohorts, :name, :demo_day_date
  end
end
