module ContributionsHelper
	def secure_hash(string)
	   Digest::SHA2.hexdigest(string)
	end
end
