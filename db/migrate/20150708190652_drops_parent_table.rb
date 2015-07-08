class DropsParentTable < ActiveRecord::Migration
  def change
    drop_table :parents
  end
end
