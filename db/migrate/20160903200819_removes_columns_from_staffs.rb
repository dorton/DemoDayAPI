class RemovesColumnsFromStaffs < ActiveRecord::Migration
  def change
    remove_column :staffs, :ta
    remove_column :staffs, :boolean
    add_column :staffs, :ta, :boolean
  end
end
