class Cohortstaff < ActiveRecord::Base
  belongs_to :staff
  belongs_to :cohort
end
