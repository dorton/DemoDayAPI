class Project < ActiveRecord::Base
  has_many :students
  belongs_to :cohort, touch: true

  validates :app_name, :app_url, :rationale, :tech_used, :cohort, presence: true


  def display_name
    app_name
  end
end
