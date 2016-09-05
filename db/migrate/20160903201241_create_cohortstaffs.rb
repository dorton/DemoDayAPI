class CreateCohortstaffs < ActiveRecord::Migration
  def change
    create_table :cohortstaffs do |t|
      t.references :staff, index: true, foreign_key: true
      t.references :cohort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
