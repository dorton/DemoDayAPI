class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :course
      t.string :portfolio_url
      t.string :email
      t.string :github_url
      t.string :app_name
      t.string :app_url
      t.string :rationale
      t.string :tech_used
      t.string :profile_pic_link
      t.string :city

      t.timestamps null: false
    end
  end
end
