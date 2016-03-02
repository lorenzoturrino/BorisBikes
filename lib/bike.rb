class Bike
	@is_working

	def initialize
		@is_working = true
	end

	def report_broken
		@is_working = false
	end

  	def working?
    	@is_working
  	end

end
