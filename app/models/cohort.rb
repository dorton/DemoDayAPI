class Cohort < ActiveRecord::Base
  has_many :students
  has_many :projects, through: :students


  def display_name
    [city, name].join("-")
  end

end
