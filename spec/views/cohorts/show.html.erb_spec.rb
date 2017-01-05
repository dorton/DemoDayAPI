require 'rails_helper'

RSpec.describe "cohorts/show", type: :view do
  before(:each) do
    @cohort = assign(:cohort, Cohort.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
