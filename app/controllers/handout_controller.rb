class HandoutController < ApplicationController
  layout :resolve_layout

  def redirect
  end

  def cohorts
    @cohorts = Cohort.all.order(:demo_day_date).order(:city)
  end

  def city
    @city_cohort = Cohort.find_by_slug(params[:id])
    @city_cohorts = Cohort.where(city: @city_cohort.city)
    @city = @city_cohort.city
  end

  def old_urls
    #code
  end

  def index
    @cohort = Cohort.find_by_slug params[:id]
    @courses = @cohort.students.map{|c| c.course}.uniq
    @staffs = Staff.joins(:cohorts).where('cohorts.id =?', @cohort).where('staffs.ta = ?', false)
    @tas = Staff.joins(:cohorts).where('cohorts.id =?', @cohort).where('staffs.ta = ?', true)

    if ["Austin", "Houston"].include? @cohort.city.name
      @image = "https://www.theironyard.com/content/dam/theironyard/locations/#{@cohort.city.name.downcase}/header_#{@cohort.city.name.downcase}.jpg"
    elsif ["Dallas", "San Antonio"].include? @cohort.city.name
      @image = "https://www.theironyard.com/content/dam/theironyard/locations/#{@cohort.city.name.downcase.gsub(" ", "-")}/header-#{@cohort.city.name.downcase.split.join}.jpg"
    elsif @cohort.city.name == "Las Vegas"
      @image = "https://www.theironyard.com/content/dam/theironyard/locations/#{@cohort.city.name.downcase.gsub(" ", "-")}/header_#{@cohort.city.name.downcase.split.last}.jpg"
    elsif @cohort.city.name == "Salt Lake City"
      @image = "https://www.theironyard.com/content/dam/theironyard/locations/#{@cohort.city.name.downcase.gsub(/\s*(\S)\S*/, '\1')}/header_#{@cohort.city.name.downcase.gsub(/\s*(\S)\S*/, '\1')}.jpg"
    end

    if ["Austin", "Houston", "Dallas", "San Antonio", "Las Vegas"].include? @cohort.city.name
      @email = @cohort.city.name.downcase.split.join
    elsif @cohort.city.name == "Salt Lake City"
      @email = @cohort.city.name.downcase.gsub(/\s*(\S)\S*/, '\1')
    end
  end


  def demo_prints
    @cohort = Cohort.find_by_slug params[:id]
    @students = @cohort.students
  end

  private

  def resolve_layout
    case action_name
    when "demo_prints"
      "print"
    else
      "application"
    end
  end


end
