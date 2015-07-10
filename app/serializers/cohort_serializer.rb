class CohortSerializer < ActiveModel::Serializer

  attributes :id, :demo_day_date, :city, :display_name, :projects

  def projects
    object.projects.pluck(:id)
  end


end
