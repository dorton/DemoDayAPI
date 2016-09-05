class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :title
      t.string :bio
      t.string :pic
      t.string :ta, :boolean      
      t.references :cohort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
