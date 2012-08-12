class Inquire < ActiveRecord::Base
  attr_accessible :company_name
  belongs_to :user
  #belongs_to :client
end
