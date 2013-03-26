class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :items, :dependent => :destroy, :order => 'category_id'
	
	validates_presence_of :name
end
