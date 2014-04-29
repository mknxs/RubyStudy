
class IDCardFactory < Factory

	def initialize
		@owners = []
	end

	def create_product(owner)
		return IDCard.new(owner)
	end

	def register_product(product)
		@owners.push(product.get_owner)
	end

	def get_owners
		return @owners
	end
end