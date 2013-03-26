class Requirement < ActiveRecord::Base
  belongs_to :event
  belongs_to :item
  attr_accessible :qty, :event_id, :item_id

  validates_presence_of :item_id, :qty
end
