class CohortSerializer < ActiveModel::Serializer


  attributes :id, :demo_day_date, :city, :display_name, :venue_name, :venue_street,
              :venue_city, :venue_zip, :projects

has_many :projects

  # def projects
  #   object.projects.order(:app_name).pluck(:id)
  # end

  def demo_day_date
    object.demo_day_date.strftime("%b %d, %Y")
  end



end
