class NatureOfBusiness < ActiveRecord::Base
  attr_accessible :name
  belongs_to :inquire
end
