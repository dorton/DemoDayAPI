ActiveAdmin.register Cohort do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :demo_day_date, :city, :venue_name, :venue_street,
              :venue_city, :venue_zip, :slug


end
