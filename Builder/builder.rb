
# 抽象クラス
class Builder

	def initialize(title, text, items)
		@title, @text, @items = title, text, items
	end

	# 抽象メソッド
	def make_title
		raise "abstract method"
	end

	# 抽象メソッド
	def make_text
		raise "abstract method"
	end

	# 抽象メソッド
	def make_items
		raise "abstract method"
	end

end