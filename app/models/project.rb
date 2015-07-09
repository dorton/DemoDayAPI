class Project < ActiveRecord::Base
  has_many :students
  belongs_to :cohort

  def display_name
    app_name
  end
end
