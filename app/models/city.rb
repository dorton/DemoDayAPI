class City < ActiveRecord::Base
  has_many :cohorts

  accepts_nested_attributes_for :cohorts


  def slug
    "#{name.downcase.split.join}"
  end

  def to_param
    slug
  end

end
