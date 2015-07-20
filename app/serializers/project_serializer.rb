class ProjectSerializer < ActiveModel::Serializer

  attributes :id, :app_name, :cohort, :app_url, :rationale, :tech_used, :students

has_many :students

  def cohort
    object.cohort_id
  end

  # def students
  #   object.students.pluck(:id)
  # end

  def app_name
    object.app_name.titleize
  end

end
