class Cohort < ActiveRecord::Base

  has_many :projects, dependent: :destroy
  has_many :students, through: :projects
  validates :city, :demo_day_date, presence: true


  def display_name
    [city, demo_day_date.strftime("%b %d, %Y")].join("-")
  end

end
