class Student < ActiveRecord::Base
  belongs_to :project
  has_one :cohort, through: :project
  validates_presence_of :name, :course, :portfolio_url, :email, :github_url, :profile_pic_link, :project

  scope :city, lambda { |city|  joins(:project => :cohort).where("cohorts.city = ?", city)   }

end
