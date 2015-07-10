class Student < ActiveRecord::Base
  belongs_to :project
  validates_presence_of :name, :course, :portfolio_url, :email, :github_url, :profile_pic_link, :project
end
