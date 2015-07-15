class AddsDetailedAddressToCohort < ActiveRecord::Migration
  def change
    rename_column :cohorts, :address, :venue_street
    add_column :cohorts, :venue_city, :string
    add_column :cohorts, :venue_zip, :string
  end
end
