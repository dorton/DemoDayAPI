class AddVenueAndAddressToCohorts < ActiveRecord::Migration
  def change
    add_column :cohorts, :venue_name, :string
    add_column :cohorts, :address, :string
  end
end
