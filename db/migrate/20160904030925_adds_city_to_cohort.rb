class AddsCityToCohort < ActiveRecord::Migration
  def change
    add_column :cohorts, :city_id, :integer
  end
end
