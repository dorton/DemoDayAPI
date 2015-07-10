class Cohort < ActiveRecord::Base

  has_many :projects

  validates :city, :demo_day_date, presence: true


  def display_name
    [city, demo_day_date].join("-")
  end

end
