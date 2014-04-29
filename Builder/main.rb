#coding: utf-8

require "./builder"
require "./director"
require "./text_builder"
require "./html_builder"
require "./xml_builder"

text_builder = TextBuilder.new("タイトル", "テキストですよー", ["項目1", "項目2", "項目3"])
director = Director.new(text_builder)
director.construct
print text_builder.get_result

html_builder = HTMLBuilder.new("test_html_builder", "this is test", ["item1", "item2", "item3"])
director = Director.new(html_builder)
director.construct
p html_builder.get_result

xml_builder = XmlBuilder.new("test_xml_builder", "this is test", ["item1", "item2", "item3"])
director = Director.new(xml_builder)
director.construct
p xml_builder.get_result