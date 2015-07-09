class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :course, :cohort, :city, :portfolio_url, :email, :github_url, :app_name, :app_url, :rationale,
  :tech_used, :profile_pic_link, :group_project, :created_at, :updated_at

  def cohort
    object.project.cohort.name
  end

  def group_project
    object.project.students.count > 1
  end

  def city
    object.project.cohort.city
  end

  def app_name
    object.project.app_name
  end

  def app_url
    object.project.app_url
  end

  def rationale
    object.project.rationale
  end

  def tech_used
    object.project.tech_used
  end

end
