AdminUser.create! email: "brian.dorton@theironyard.com", password: "12345678", password_confirmation: "12345678"

require 'faker'


["Houston", "Austin", "San Antonio", "Dallas", "Las Vegas", "Salt Lake City"].each do |name|
  City.create! name: name
end

["July 24, 2015", "September 4, 2015", "April 14, 2016", "September 2, 2016"].each do |date|
  City.all.each do |city|
    Cohort.create! city_id: city.id, demo_day_date: date, slug: "#{city.name.downcase.gsub(" ", "-")}-#{date.to_date.strftime('%b%Y').downcase}"
  end
end



def create_project(cohort)
  project = Project.new
  project.app_url = Faker::Internet.url
  project.tech_used = Faker::Lorem.words(rand(1..5)).join(", ")
  project.app_name = Faker::Company.bs
  project.rationale = Faker::Lorem.paragraph(5)
  project.cohort = cohort
  project.save
  project
end

def create_student(course, project)
  student = Student.new
  student.course = course
  student.name = Faker::Name.name
  student.email = Faker::Internet.email
  student.portfolio_url = Faker::Internet.url
  student.github_url = Faker::Internet.url
  student.profile_pic_link = Faker::Avatar.image
  student.bio = Faker::Lorem.paragraph(8)
  student.project = project
  student.save!
end

def create_staff
  records = JSON.parse(File.read('app/assets/data/staff.json'))
  records.each do |record|
    Staff.create!(record)
  end
  Staff.all.each do |staff|
    Cohort.where(city_id: 1).each do |cohort|
      staff.cohorts << cohort
    end
  end
end

Cohort.all.each do |cohort|
  ["Rails Engineering", "Front End Engineering", "Mobile Engineering"].each do |course|
    rand(8..10).times do
      create_student(course, create_project(cohort))
    end
  end
end

create_staff
