class CitiesController < ApplicationController


def index
  @cities = City.order(:name).all
end


def show
  @city = City.find_by_slug params[:id]

  if ["Austin", "Houston"].include? @city.name
    @image = "https://www.theironyard.com/content/dam/theironyard/locations/#{@city.name.downcase}/header_#{@city.name.downcase}.jpg"
  elsif ["Dallas", "San Antonio"].include? @city.name
    @image = "https://www.theironyard.com/content/dam/theironyard/locations/#{@city.name.downcase.gsub(" ", "-")}/header-#{@city.name.downcase.split.join}.jpg"
  elsif @city.name == "Las Vegas"
    @image = "https://www.theironyard.com/content/dam/theironyard/locations/#{@city.name.downcase.gsub(" ", "-")}/header_#{@city.name.downcase.split.last}.jpg"
  elsif @city.name == "Salt Lake City"
    @image = "https://www.theironyard.com/content/dam/theironyard/locations/#{@city.name.downcase.gsub(/\s*(\S)\S*/, '\1')}/header_#{@city.name.downcase.gsub(/\s*(\S)\S*/, '\1')}.jpg"
  end
end

end
