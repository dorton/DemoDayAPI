class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name, :course, :portfolio_url, :email, :github_url, :app_name, :app_url, :rationale, :tech_used, :profile_pic_link, :city, :created_at, :updated_at
end
