class ProjectSerializer < ActiveModel::Serializer

  attributes :id, :app_name, :cohort, :app_url, :rationale, :tech_used, :students

has_many :students

  def url_with_protocol(url)
    /^http/i.match(url) ? url : "http://#{url}"
  end

  def app_url
    url_with_protocol(object.app_url)
  end

  def cohort
    object.cohort_id
  end

  # def students
  #   object.students.pluck(:id)
  # end

  # def app_name
  #   object.app_name.titleize
  # end

end
