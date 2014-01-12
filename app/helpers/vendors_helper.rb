module VendorsHelper
	def vote_percent(vendor)
			(vendor.positives.size * 100)/(vendor.positives.size + vendor.negatives.size)
	end
end
