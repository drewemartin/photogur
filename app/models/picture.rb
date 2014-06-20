class Picture < ActiveRecord::Base

	def change 
		scope :newest_first, -> { order("created_at DESC")}
		scope :most_recent_five, -> { newest_first.limit(5)}
		scope :created_before, -> { where("created_at < ?", time)}	
	end
	end	
end
