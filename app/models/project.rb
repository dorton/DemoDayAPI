class Project < ActiveRecord::Base
  has_many :students

  def display_name
    app_name
  end
end
