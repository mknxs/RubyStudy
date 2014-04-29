#coding: utf-8

class XmlBuilder < Builder

	def initizlize(title, text, items)
		super(title, text, items)
	end

	def make_title
		begin
			@file = open(@title + ".xml", "w")
		
		rescue => ex
			puts ex.message
		end

		@file.write("<<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
		@file.write("<title>#{@title}</title>\n")
	end

	def make_text
		@file.write("<text>#{@text}</test>\n")
	end

	def make_items
		@file.write("<items>\n")
		@items.each do |item|
			@file.write("<item>#{item}</item>\n")
		end
		@file.write("</items>")
	end

	def close
		@file.close
	end

	def get_result
		@title
	end
end