class Contribution < ActiveRecord::Base
  belongs_to :event
  belongs_to :item
  attr_accessible :authtoken, :contributor, :qty, :req, :event_id, :item_id

  default_scope :order => 'created_at DESC'
end
