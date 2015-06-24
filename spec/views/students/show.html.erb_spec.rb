require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "Name",
      :course => "Course",
      :portfolio_url => "Portfolio Url",
      :email => "Email",
      :github_url => "Github Url",
      :app_name => "App Name",
      :app_url => "App Url",
      :rationale => "Rationale",
      :tech_used => "Tech Used",
      :profile_pic_link => "Profile Pic Link",
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Course/)
    expect(rendered).to match(/Portfolio Url/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Github Url/)
    expect(rendered).to match(/App Name/)
    expect(rendered).to match(/App Url/)
    expect(rendered).to match(/Rationale/)
    expect(rendered).to match(/Tech Used/)
    expect(rendered).to match(/Profile Pic Link/)
    expect(rendered).to match(/City/)
  end
end
