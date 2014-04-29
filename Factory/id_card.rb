
class IDCard < Product

	def initialize(owner)
		p "create #{owner}'s card"
		@owner = owner
	end

	def use
		p "use #{@owner}'s card"
	end

	def get_owner
		return @owner
	end
end