class Location < ActiveRecord::Base
  attr_accessible :address, :map, :name

  has_many :events, :dependent => :destroy

  validates_presence_of :name
end
