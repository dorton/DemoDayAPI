class RemoveCityStudent < ActiveRecord::Migration
  def change
    remove_column :students, :city
  end
end
