class Inquire < ActiveRecord::Base
  attr_accessible :company_name
  belongs_to :user
  has_many :nature_of_businesses
  has_many :sources
end
