

class Director

	def initialize(builder)
		@builder = builder
	end

	def construct
		@builder.make_title
		@builder.make_text
		@builder.make_items
		@builder.close
	end
end