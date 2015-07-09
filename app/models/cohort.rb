class Cohort < ActiveRecord::Base

  has_many :projects

  validates :city, :name, presence: true


  def display_name
    [city, name].join("-")
  end

end
