class Student < ActiveRecord::Base
  validates_presence_of :name, :course, :portfolio_url, :email, :github_url, :app_name, :app_url, :rationale, :tech_used, :profile_pic_link, :city
end
