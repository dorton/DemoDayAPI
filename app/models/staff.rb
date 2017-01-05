class Staff < ActiveRecord::Base
  has_many :cohortstaffs
  has_many :cohorts, through: :cohortstaffs

end
