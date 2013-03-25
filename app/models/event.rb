class Event < ActiveRecord::Base
  belongs_to :location
  attr_accessible :date, :details, :name, :location_id
end
