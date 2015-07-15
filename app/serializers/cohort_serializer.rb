class CohortSerializer < ActiveModel::Serializer

  attributes :id, :demo_day_date, :city, :display_name, :projects, :venue_name, :venue_street,
              :venue_city, :venue_zip

  def projects
    object.projects.order(:app_name).pluck(:id)
  end


end
