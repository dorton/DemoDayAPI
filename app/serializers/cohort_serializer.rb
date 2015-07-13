class CohortSerializer < ActiveModel::Serializer

  attributes :id, :demo_day_date, :city, :display_name, :projects

  def projects
    object.projects.order(:app_name).pluck(:id)
  end


end
