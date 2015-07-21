class CohortSerializer < ActiveModel::Serializer


  attributes :id, :demo_day_date, :city, :display_name, :venue_name, :venue_street,
              :venue_city, :venue_zip, :projects, :students

has_many :projects
has_many :students

  def demo_day_date
    object.demo_day_date.strftime("%b %d, %Y")
  end


  # def students
  #   object.students
  # end



end
