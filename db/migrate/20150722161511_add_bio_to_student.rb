class AddBioToStudent < ActiveRecord::Migration
  def change
    add_column :students, :bio, :string
  end
end
