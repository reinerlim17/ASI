class Source < ActiveRecord::Base
  attr_accessible :name
  belongs_to :inquire
end
