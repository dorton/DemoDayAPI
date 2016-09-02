class HandoutController < ApplicationController
  def redirect
  end

  def index
  end

  def demo_prints
    @projects = Project.where(cohort_id: Cohort.last)
  end
end
