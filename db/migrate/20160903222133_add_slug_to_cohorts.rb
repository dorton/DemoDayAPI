class AddSlugToCohorts < ActiveRecord::Migration
  def change
    add_column :cohorts, :slug, :string
  end
end
