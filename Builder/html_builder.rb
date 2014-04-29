#coding: utf-8

class HTMLBuilder < Builder

	def initizlize(title, text, items)
		super(title, text, items)
	end

	def make_title
		begin
			@file = open(@title + ".html", "w")
		
		rescue => ex
			puts ex.message
		end

		@file.write("<html><head><title>#{@title}</title></head><body>")
		@file.write("<h1>#{@title}</h1>")
	end

	def make_text
		@file.write("<p>#{@text}</p>")
	end

	def make_items
		@file.write("<ul>")
		@items.each do |item|
			@file.write("<li>#{item}</li>")
		end
		@file.write("</ul>")
	end

	def close
		@file.write("</body></html>")
		@file.close
	end

	def get_result
		@title
	end
end