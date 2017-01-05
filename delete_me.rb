def create_student
  date = "December 16, 2016"

  hou = City.first
  cohort = hou.cohorts.create! city_id: hou.id, demo_day_date: date, slug: "#{hou.name.downcase.gsub(" ", "-")}-#{date.to_date.strftime('%b%Y').downcase}"

  project = cohort.projects.create! :app_name => Faker::Company.bs, :app_url => Faker::Internet.url, :rationale => Faker::Lorem.paragraph(5), :tech_used => Faker::Lorem.words(rand(1..5)).join(", ")

  student = project.students.new
  student.name = Faker::Name.name
  student.email = Faker::Internet.email
  student.course = "UI"
  student.github_url = Faker::Internet.url
  student.profile_pic_link = Faker::Avatar.image
  student.bio = Faker::Lorem.paragraph(8)
  student.save!
end
