class Student < ActiveRecord::Base
  belongs_to :project, touch: true
  has_one :cohort, through: :project
  validates_presence_of :name, :course, :email, :github_url, :profile_pic_link, :project, :bio

  scope :city, lambda { |city|  joins(:project => :cohort).where("cohorts.city = ?", city)   }

end
