class Item < ActiveRecord::Base
  belongs_to :category
  attr_accessible :name, :unit, :category_id
end
