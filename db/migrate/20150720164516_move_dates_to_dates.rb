class MoveDatesToDates < ActiveRecord::Migration
  def change

    add_column :cohorts, :temporary_date, :date

    Cohort.all.each do |c|
      c.update_column :temporary_date, Date.parse(c.demo_day_date)
    end

    remove_column :cohorts, :demo_day_date
    rename_column :cohorts, :temporary_date, :demo_day_date


  end
end
