require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "MyString",
      :course => "MyString",
      :portfolio_url => "MyString",
      :email => "MyString",
      :github_url => "MyString",
      :app_name => "MyString",
      :app_url => "MyString",
      :rationale => "MyString",
      :tech_used => "MyString",
      :profile_pic_link => "MyString",
      :city => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_course[name=?]", "student[course]"

      assert_select "input#student_portfolio_url[name=?]", "student[portfolio_url]"

      assert_select "input#student_email[name=?]", "student[email]"

      assert_select "input#student_github_url[name=?]", "student[github_url]"

      assert_select "input#student_app_name[name=?]", "student[app_name]"

      assert_select "input#student_app_url[name=?]", "student[app_url]"

      assert_select "input#student_rationale[name=?]", "student[rationale]"

      assert_select "input#student_tech_used[name=?]", "student[tech_used]"

      assert_select "input#student_profile_pic_link[name=?]", "student[profile_pic_link]"

      assert_select "input#student_city[name=?]", "student[city]"
    end
  end
end
