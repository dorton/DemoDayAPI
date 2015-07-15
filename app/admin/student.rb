ActiveAdmin.register Student do

  filter :project
  filter :name
  filter :course, as: :select, collection: proc { Student.pluck(:course).uniq }
  filter :cohort, as: :select, collection: proc {Cohort.all.map{|c| [c.city, c.id] }}
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :course, :portfolio_url, :email, :github_url, :app_name, :app_url, :rationale, :tech_used, :profile_pic_link,
              :group_project, :city

  index do

    column :name
    column :course
    column "project" do |student| link_to student.project.app_name,  [:admin, student.project] end
    column "# In Project" do |student| student.project.students.count end
    column "cohort" do |student| student.project.cohort.city end
    column "photo"  do |student|  image_tag student.profile_pic_link, class: "img-thumbnail" end
    actions

  end


  def city
    object.project.cohort.city
  end


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
