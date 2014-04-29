
class Factory

	# 抽象メソッド
	def create_product(owner)
		raise "abstract method"
	end

	# 抽象メソッド
	def register_product(product)
		raise "abstract method"
	end

	def create(owner)
		product = create_product(owner)
		register_product(product)
		return product
	end
end