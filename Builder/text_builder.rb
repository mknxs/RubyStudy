#coding: utf-8

class TextBuilder < Builder

	def initialize(title, text, items)
		super(title, text, items)
		@buffer = ""
	end

	def make_title
		@buffer << "=========================\n"
		@buffer << "『#{@title}』\n\n"
	end

	def make_text
		@buffer << "■#{@text}\n\n"
	end

	def make_items
		@items.each do |item|
			@buffer << " ・#{item}\n"
		end
		@buffer << "\n"
	end

	def close
		@buffer << "=========================\n"
	end

	def get_result
		@buffer
	end
end