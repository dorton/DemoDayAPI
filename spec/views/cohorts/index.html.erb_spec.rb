require 'rails_helper'

RSpec.describe "cohorts/index", type: :view do
  before(:each) do
    assign(:cohorts, [
      Cohort.create!(),
      Cohort.create!()
    ])
  end

  it "renders a list of cohorts" do
    render
  end
end
