class Inquire < ActiveRecord::Base
  attr_accessible :name
  belongs_to :user
  belongs_to :client
end
