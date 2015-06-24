require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
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
      ),
      Student.create!(
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
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Course".to_s, :count => 2
    assert_select "tr>td", :text => "Portfolio Url".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Github Url".to_s, :count => 2
    assert_select "tr>td", :text => "App Name".to_s, :count => 2
    assert_select "tr>td", :text => "App Url".to_s, :count => 2
    assert_select "tr>td", :text => "Rationale".to_s, :count => 2
    assert_select "tr>td", :text => "Tech Used".to_s, :count => 2
    assert_select "tr>td", :text => "Profile Pic Link".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
