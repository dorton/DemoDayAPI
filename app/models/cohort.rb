class Cohort < ActiveRecord::Base

  has_many :projects

  validates :city, :demo_day_date, :venue_name, :address, presence: true


  def display_name
    [city, demo_day_date].join("-")
  end

end
