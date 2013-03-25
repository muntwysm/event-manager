class Location < ActiveRecord::Base
  attr_accessible :address, :map, :name

  has_many :events, :dependent => :destroy
end
