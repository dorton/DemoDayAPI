require 'faker'

50.times do

  student = Student.new
  student.app_name = Faker::Company.bs
  student.rationale = Faker::Lorem.paragraph(2)
  student.name = Faker::Name.name
  student.course = ["Rails", "Front_End", "Python", "Mobile", "UI"].sample
  student.city = ["Houston", "Austin", "Orlando", "Atlanta", "Tampa", "Washington_DC", "Greenville", "Durham", "Nashville", "Charlotte"].sample
  student.email = Faker::Internet.email
  student.portfolio_url = Faker::Internet.url
  student.github_url = Faker::Internet.url
  student.app_url = Faker::Internet.url
  student.tech_used = Faker::Lorem.words(4)
  student.profile_pic_link = Faker::Avatar.image

  student.save!

end
