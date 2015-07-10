ActiveAdmin.register Student do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :course, :portfolio_url, :email, :github_url, :app_name, :app_url, :rationale, :tech_used, :profile_pic_link, :group_project

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
