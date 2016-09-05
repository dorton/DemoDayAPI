class Cohort < ActiveRecord::Base
  belongs_to :city, dependent: :destroy
  has_many :projects, dependent: :destroy
  has_many :students, through: :projects
  has_many :cohortstaffs
  has_many :staffs, through: :cohortstaffs
  validates :demo_day_date, :slug, presence: true

  def display_name
    [city, demo_day_date.strftime("%b %d, %Y")].join("-")
  end

  def to_param
    slug
  end

end
