class Event < ActiveRecord::Base
  belongs_to :location
  attr_accessible :date, :details, :name, :location_id, :name

  has_many :requirements, :dependent => :destroy
  has_many :items, :through => :requirements, :order => 'category_id'
end
