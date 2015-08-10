class StudentSerializer < ActiveModel::Serializer

  attributes :id, :name, :course, :demo_day_date, :city, :portfolio_url, :email, :github_url, :app_name, :app_url, :rationale,
  :tech_used, :profile_pic_link, :group_project, :venue_name, :venue_street,
  :created_at, :updated_at, :venue_city, :venue_zip, :bio, :dont_publish_student

  def url_with_protocol(url)
    /^http/i.match(url) ? url : "http://#{url}"
  end

  def venue_name
    object.project.cohort.venue_name
  end

  def venue_street
    object.project.cohort.venue_street
  end

  def venue_city
    object.project.cohort.venue_city
  end

  def venue_zip
    object.project.cohort.venue_zip
  end

  def demo_day_date
    object.project.cohort.demo_day_date.strftime("%b %d, %Y")
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
    url_with_protocol(object.project.app_url)
  end

  def rationale
    object.project.rationale
  end

  def tech_used
    object.project.tech_used
  end

  def portfolio_url
    url_with_protocol(object.portfolio_url)
  end

  def github_url
    url_with_protocol(object.github_url)
  end

  def profile_pic_link
    url_with_protocol(object.profile_pic_link)
  end

end
