# AdminUser.create! email: "admin@example.com", password: "12345678", password_confirmation: "12345678"

require 'faker'

["Houston", "Austin", "Orlando", "Atlanta", "Tampa", "Washington DC", "Greenville", "Durham", "Nashville", "Charleston", "Columbia"].each do |city_name|

  Cohort.create! city: city_name, demo_day_date: ["July 24, 2015", "September 4, 2015", "September 8, 2015", "October 20, 2015"].sample

end

def create_project(cohort)
  project = Project.new
  project.app_url = Faker::Internet.url
  project.tech_used = Faker::Lorem.words(4)
  project.app_name = Faker::Company.bs
  project.rationale = Faker::Lorem.paragraph(2)
  project.cohort = cohort
  project.save
  project
end

def create_student(project:)
  student = Student.new
  student.project = project
  student.name = Faker::Name.name
  student.course = ["Rails Engineering", "Front End Engineering", "Python Engineering", "Mobile Engineering", "UI"].sample
  student.email = Faker::Internet.email
  student.portfolio_url = Faker::Internet.url
  student.github_url = Faker::Internet.url
  student.profile_pic_link = Faker::Avatar.image
  student.save!
end

50.times do

  this_cohort = Cohort.all.sample

  p = create_project(this_cohort)
  [1, 2, 5].sample.times do
    create_student(project: p)
  end

end
