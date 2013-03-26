class Contribution < ActiveRecord::Base
  belongs_to :event
  belongs_to :item
  attr_accessible :authtoken, :contributor, :qty, :req, :event_id, :item_id

  default_scope :order => 'created_at DESC'
	
	def self.search(search)
		if search
		  find(:all, :conditions => ['LOWER(contributor) LIKE ?', "%#{search.downcase}%"])
		else
			find(:all)
		end
	end

	def self.get_info(contribution)
		required = false
		requirement = Requirement.all(:conditions => ["event_id = ? AND item_id = ?", contribution.event_id, contribution.item_id])
		required = true if requirement.any?

		if contribution.req and required
			return "This contribution is gladly accepted, thank you!"
		elsif required
			return "This contribution is no longer required because the Administrator has changed some of the qantities required. If this was your contribution, you may wish to 'Destroy' it, as it no longer needs to be recorded."	
		else
			return "This contribution is no longer required because #{contribution.item.name} have been removed from the Event Requirements. If this was your contribution, you may wish to 'Destroy' it, as it no longer needs to be recorded."	
		end
	end

end
