class Item < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :unit, :category_id

  has_many :requirements, :dependent => :destroy
  has_many :events, :through => :requirements

  	def name_and_unit
		"#{name} -- #{unit}"
	end
end
